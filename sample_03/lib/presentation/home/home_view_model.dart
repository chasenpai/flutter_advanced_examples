import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:sample_03/core/domain/error/network_error.dart';
import 'package:sample_03/core/domain/error/result.dart';
import 'package:sample_03/domain/error/bookmark_error.dart';
import 'package:sample_03/domain/error/new_recipes_error.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/use_case/get_categories_use_case.dart';
import 'package:sample_03/domain/use_case/get_dishes_by_category_use_case.dart';
import 'package:sample_03/domain/use_case/get_new_recipes_use_case.dart';
import 'package:sample_03/domain/use_case/toggle_bookmark_recipe_use_case.dart';
import 'package:sample_03/presentation/home/home_action.dart';
import 'package:sample_03/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {

  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetDishesByCategoryUseCase _getDishesByCategoryUseCase;
  final GetNewRecipesUseCase _getNewRecipesUseCase;
  final ToggleBookmarkRecipeUseCase _toggleBookmarkRecipeUseCase;
  StreamSubscription? _streamSubscription;

  HomeViewModel({
    required GetCategoriesUseCase getCategoriesUseCase,
    required GetDishesByCategoryUseCase getDishesByCategoryUseCase,
    required GetNewRecipesUseCase getNewRecipesUseCase,
    required ToggleBookmarkRecipeUseCase toggleBookmarkRecipeUseCase,
  }): _getCategoriesUseCase = getCategoriesUseCase,
      _getDishesByCategoryUseCase = getDishesByCategoryUseCase,
      _getNewRecipesUseCase = getNewRecipesUseCase,
      _toggleBookmarkRecipeUseCase = toggleBookmarkRecipeUseCase {
      _fetchCategories();
      _fetchNewRecipes();
  }

  HomeState _state = const HomeState(
    name: 'Cha',
  );
  HomeState get state => _state;

  final _eventController = StreamController<NetworkError>(); //단발성 일 때..?
  Stream<NetworkError> get eventStream => _eventController.stream;

  void _fetchCategories() async {
    _loadingStart();
    final result = await _getCategoriesUseCase.execute();
    switch(result) {
      case Success<List<String>, NetworkError>():
        _state = _state.copyWith(
          isLoading: false,
          categories: result.data,
        );
        notifyListeners();
        await _fetchDishesByCategory('All');
      case Failure<List<String>, NetworkError>():
        _loadingEnd();
        _eventController.add(result.error);
    }
  }

  void _onCategorySelected(String category) async {
    _state = _state.copyWith(
      selectedCategory: category,
    );
    notifyListeners();
    await _fetchDishesByCategory(category);
  }

  Future<void> _fetchDishesByCategory(String category) async {
    _loadingStart();
    _streamSubscription = _getDishesByCategoryUseCase.execute(category).listen((dishes) {
      _state = _state.copyWith(
        isLoading: false,
        dishes: dishes,
      );
      notifyListeners();
    });
  }

  void _fetchNewRecipes() async {
    _loadingStart();
    final result = await _getNewRecipesUseCase.execute();
    switch(result) {
      case Success<List<Recipe>, NewRecipesError>():
        _state = _state.copyWith(
          isLoading: false,
          newRecipes: result.data,
        );
        notifyListeners();
      case Failure<List<Recipe>, NewRecipesError>():
        switch(result.error) {
          case NewRecipesError.noRecipe:
          case NewRecipesError.invalidCategory:
          case NewRecipesError.unknown:
          _loadingEnd();
        }
    }
  }

  void _onBookmarkTap(Recipe recipe) async {
    final result = await _toggleBookmarkRecipeUseCase.execute(recipe.id);
    switch(result) {
      case Success<List<Recipe>, BookmarkError>():
        _state = state.copyWith(
          dishes: result.data,
        );
        notifyListeners();
      case Failure<List<Recipe>, BookmarkError>():
        switch(result.error) {
          case BookmarkError.noRecipe:
            // TODO: Handle this case.
            throw UnimplementedError();
          case BookmarkError.saveFailed:
            // TODO: Handle this case.
            throw UnimplementedError();
          case BookmarkError.unknown:
            // TODO: Handle this case.
            throw UnimplementedError();
        }
    }
  }

  void onAction(HomeAction action) async {
    switch(action) {
      case OnSearchFieldTap():
        return;
      case OnCategorySelected():
        _onCategorySelected(action.category);
      case OnBookmarkTap():
        _onBookmarkTap(action.recipe);
    }
  }

  void _loadingStart() {
    _state = _state.copyWith(
      isLoading: true,
    );
    notifyListeners();
  }

  void _loadingEnd() {
    _state = _state.copyWith(
      isLoading: false,
    );
    notifyListeners();
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

}
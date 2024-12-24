import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:sample_03/core/domain/error/network_error.dart';
import 'package:sample_03/core/domain/error/result.dart';
import 'package:sample_03/domain/error/new_recipes_error.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/use_case/get_categories_use_case.dart';
import 'package:sample_03/domain/use_case/get_dishes_by_category_use_case.dart';
import 'package:sample_03/domain/use_case/get_new_recipes_use_case.dart';
import 'package:sample_03/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {

  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetDishesByCategoryUseCase _getDishesByCategoryUseCase;
  final GetNewRecipesUseCase _getNewRecipesUseCase;

  HomeViewModel({
    required GetCategoriesUseCase getCategoriesUseCase,
    required GetDishesByCategoryUseCase getDishesByCategoryUseCase,
    required GetNewRecipesUseCase getNewRecipesUseCase,
  }): _getCategoriesUseCase = getCategoriesUseCase,
      _getDishesByCategoryUseCase = getDishesByCategoryUseCase,
      _getNewRecipesUseCase = getNewRecipesUseCase {
      _fetchCategories();
      _fetchNewRecipes();
  }

  HomeState _state = const HomeState();
  HomeState get state => _state;

  final _eventController = StreamController<NetworkError>(); //단발성 일 때..?
  Stream<NetworkError> get eventStream => _eventController.stream;

  void _fetchCategories() async {
    _loadingStart();
    notifyListeners();
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

  void onCategorySelected(String category) async {
    _state = _state.copyWith(
      selectedCategory: category,
    );
    notifyListeners();
    await _fetchDishesByCategory(category);
  }

  Future<void> _fetchDishesByCategory(String category) async {
    _loadingStart();
    notifyListeners();
    final dishes = await _getDishesByCategoryUseCase.execute(category);
    _state = _state.copyWith(
      isLoading: false,
      dishes: dishes,
    );
    notifyListeners();
  }

  void _fetchNewRecipes() async {
    _loadingStart();
    notifyListeners();
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

}
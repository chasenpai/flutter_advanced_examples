import 'package:flutter/material.dart';
import 'package:sample_03/domain/repository/recent_search_recipe_repository.dart';
import 'package:sample_03/domain/use_case/search_recipes_use_case.dart';
import 'package:sample_03/presentation/search/search_recipes_state.dart';

class SearchRecipesViewModel with ChangeNotifier {
  final RecentSearchRecipeRepository _recentSearchRecipeRepository;
  final SearchRecipesUseCase _searchRecipesUseCase;

  SearchRecipesViewModel({
    required RecentSearchRecipeRepository recentSearchRecipeRepository,
    required SearchRecipesUseCase searchRecipesUseCase,
  }): _recentSearchRecipeRepository = recentSearchRecipeRepository,
      _searchRecipesUseCase = searchRecipesUseCase {
    _loadRecentSearchRecipes();
  }

  SearchRecipesState _state = SearchRecipesState();

  SearchRecipesState get state => _state;

  void _loadRecentSearchRecipes() async {
    _state = _state.copyWith(
      isLoading: true,
    );
    notifyListeners();
    final recipes = await _recentSearchRecipeRepository.getRecentSearchRecipes();
    print(recipes);
    _state = state.copyWith(
      recipes: recipes,
      isLoading: false,
    );
    notifyListeners();
  }

  void searchRecipes(String query) async {
    _state = _state.copyWith(
        isLoading: true,
    );
    notifyListeners();
    final recipes = await _searchRecipesUseCase.execute(query);
    _state = _state.copyWith(
      isLoading: false,
      recipes: recipes,
      title: 'Search Result',
      recipesCount: '${recipes.length} results',
    );
    notifyListeners();
  }

}
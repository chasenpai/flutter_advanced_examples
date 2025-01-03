import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:sample_03/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:sample_03/domain/use_case/toggle_bookmark_recipe_use_case.dart';
import 'package:sample_03/presentation/saved_recipes/saved_recipes_action.dart';
import 'package:sample_03/presentation/saved_recipes/saved_recipes_state.dart';

class SavedRecipesViewModel with ChangeNotifier {

  final GetSavedRecipesUseCase _getSavedRecipesUseCase;
  final ToggleBookmarkRecipeUseCase _toggleBookmarkRecipeUseCase;
  StreamSubscription? _streamSubscription;

  SavedRecipesState _state = const SavedRecipesState();

  SavedRecipesState get state => _state;

  SavedRecipesViewModel({
    required GetSavedRecipesUseCase getSavedRecipesUseCase,
    required ToggleBookmarkRecipeUseCase toggleBookmarkRecipeUseCase,
  }): _getSavedRecipesUseCase = getSavedRecipesUseCase,
      _toggleBookmarkRecipeUseCase = toggleBookmarkRecipeUseCase {
    _streamSubscription = _getSavedRecipesUseCase.execute().listen((recipes) {
      _state = _state.copyWith(
        recipes: recipes,
      );
      notifyListeners();
    });
  }

  void onAction(SavedRecipesAction action) async {
    switch(action) {
      case OnTap():
        // TODO: Handle this case.
        throw UnimplementedError();
      case OnBookmarkTap():
        _onBookmarkTap(action.recipe.id);
    }
  }

  void _onBookmarkTap(int recipeId) async {
    await _toggleBookmarkRecipeUseCase.execute(recipeId);
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

}
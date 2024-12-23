import 'package:flutter/cupertino.dart';
import 'package:sample_03/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:sample_03/presentation/saved_recipes/saved_recipes_state.dart';

class SavedRecipesViewModel with ChangeNotifier {

  final GetSavedRecipesUseCase _getSavedRecipesUseCase;

  SavedRecipesState _state = SavedRecipesState();

  SavedRecipesState get state => _state;

  SavedRecipesViewModel({
    required GetSavedRecipesUseCase getSavedRecipesUseCase,
  }): _getSavedRecipesUseCase = getSavedRecipesUseCase {
    _loadRecipes();
  }

  void _loadRecipes() async {
    _state = _state.copyWith(
      isLoading: true,
    );
    notifyListeners();
    final recipes = await _getSavedRecipesUseCase.execute();
    _state = _state.copyWith(
      recipes: recipes,
      isLoading: false,
    );
    notifyListeners();
  }

}
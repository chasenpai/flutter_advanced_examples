import 'package:flutter/cupertino.dart';
import 'package:sample_03/domain/repository/ingredient_repository.dart';
import 'package:sample_03/domain/repository/procedure_repository.dart';
import 'package:sample_03/domain/use_case/get_dishes_by_category_use_case.dart';
import 'package:sample_03/presentation/ingredient/ingredient_action.dart';
import 'package:sample_03/presentation/ingredient/ingredient_state.dart';

class IngredientViewModel with ChangeNotifier {

  final IngredientRepository _ingredientRepository;
  final ProcedureRepository _procedureRepository;
  final GetDishesByCategoryUseCase _getDishesByCategoryUseCase;

  IngredientViewModel({
    required IngredientRepository ingredientRepository,
    required ProcedureRepository procedureRepository,
    required GetDishesByCategoryUseCase getDishesByCategoryUseCase,
  }): _ingredientRepository = ingredientRepository,
      _procedureRepository = procedureRepository,
      _getDishesByCategoryUseCase = getDishesByCategoryUseCase;

  IngredientState _state = const IngredientState();
  IngredientState get state => _state;

  void onAction(IngredientAction action) async {
    switch(action) {
      case OnBookmarkTap():
        // TODO: Handle this case.
        throw UnimplementedError();
      case OnIngredientTap():
        _state = _state.copyWith(
          selectedTabIndex: 0,
        );
        notifyListeners();
      case OnProcedureTap():
        _state = _state.copyWith(
          selectedTabIndex: 1,
        );
        notifyListeners();
      case OnFollowTap():
        // TODO: Handle this case.
        throw UnimplementedError();
      case LoadRecipe():
        _loadRecipe(action.recipeId);
    }
  }

  void _getIngredients() async {
    final ingredients = await _ingredientRepository.getIngredients();
    _state = _state.copyWith(
      ingredients: ingredients,
    );
    notifyListeners();
  }

  void _getProcedures() async {
    if(state.recipe != null) {
      final recipeId = state.recipe!.id;
      final procedures = await _procedureRepository.getProceduresByRecipeId(recipeId);
      _state = _state.copyWith(
        procedures: procedures.where((e) => e.recipeId == e.recipeId).toList(),
      );
    }
    notifyListeners();
  }

  void _loadRecipe(int id) async {
    _getDishesByCategoryUseCase.execute('All').listen((recipes) {
      final recipe = recipes.firstWhere((e) => e.id == id);
      _state = _state.copyWith(
        recipe: recipe,
      );
      notifyListeners();
      _getIngredients();
      _getProcedures();
    });
  }

}
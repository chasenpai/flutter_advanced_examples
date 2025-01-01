import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_03/domain/model/recipe.dart';

part 'ingredient_action.freezed.dart';

@freezed
sealed class IngredientAction with _$IngredientAction{
  const factory IngredientAction.onBookmarkTap(Recipe recipe) = OnBookmarkTap;
  const factory IngredientAction.onIngredientTap() = OnIngredientTap;
  const factory IngredientAction.onProcedureTap() = OnProcedureTap;
  const factory IngredientAction.onFollowTap(Recipe recipe) = OnFollowTap;
  const factory IngredientAction.loadRecipe(int recipeId) = LoadRecipe;
}
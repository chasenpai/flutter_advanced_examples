import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_03/domain/model/ingredient.dart';
import 'package:sample_03/domain/model/procedure.dart';
import 'package:sample_03/domain/model/recipe.dart';

part 'ingredient_state.freezed.dart';
part 'ingredient_state.g.dart';

@freezed
class IngredientState with _$IngredientState {
  const factory IngredientState({
    Recipe? recipe,
    @Default([]) List<Ingredient> ingredients,
    @Default([]) List<Procedure> procedures,
    @Default(0) int selectedTabIndex,
  }) = _IngredientState;

  factory IngredientState.fromJson(Map<String, dynamic> json) => _$IngredientStateFromJson(json);
}
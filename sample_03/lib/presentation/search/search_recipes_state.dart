import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_03/domain/model/recipe.dart';

part 'search_recipes_state.freezed.dart';

@freezed
class SearchRecipesState with _$SearchRecipesState {
  const factory SearchRecipesState({
    @Default([]) List<Recipe> recipes,
    @Default(false) bool isLoading,
  }) = _SearchRecipesState;
}
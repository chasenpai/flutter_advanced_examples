import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_03/domain/model/recipe.dart';

part 'saved_recipes_action.freezed.dart';

@freezed
sealed class SavedRecipesAction with _$SavedRecipesAction{
  const factory SavedRecipesAction.onTap(Recipe recipe) = OnTap;
  const factory SavedRecipesAction.onBookmarkTap(Recipe recipe) = OnBookmarkTap;
}
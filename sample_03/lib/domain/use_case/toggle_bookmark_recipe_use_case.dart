import 'package:sample_03/core/domain/error/result.dart';
import 'package:sample_03/domain/error/bookmark_error.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/repository/bookmark_repository.dart';
import 'package:sample_03/domain/repository/recipe_repository.dart';

class ToggleBookmarkRecipeUseCase {
  final RecipeRepository _recipeRepository;
  final BookmarkRepository _bookmarkRepository;

  const ToggleBookmarkRecipeUseCase({
    required RecipeRepository recipeRepository,
    required BookmarkRepository bookmarkRepository,
  }): _recipeRepository = recipeRepository,
      _bookmarkRepository = bookmarkRepository;

  Future<Result<List<Recipe>, BookmarkError>> execute(int recipeId) async {
    try {
      final recipe = await _recipeRepository.getRecipe(recipeId);
      if(recipe == null) {
        return const Result.failed(BookmarkError.noRecipe);
      }
      await _bookmarkRepository.toggle(recipeId);
      final recipes = await _recipeRepository.getRecipes();
      final ids = await _bookmarkRepository.getBookmarkIds();
      return Result.success(recipes.map((e) {
        if(ids.contains(e.id)) {
          return e.copyWith(
            isBookmark: true,
          );
        }
        return e;
      }).toList());
    }catch (e) {
      return const Result.failed(BookmarkError.unknown);
    }
  }

}
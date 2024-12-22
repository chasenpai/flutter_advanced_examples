import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/repository/bookmark_repository.dart';
import 'package:sample_03/domain/repository/recipe_repository.dart';

class GetSavedRecipesUseCase {

  final RecipeRepository _recipeRepository;
  final BookmarkRepository _bookmarkRepository;

  GetSavedRecipesUseCase.name({
    required RecipeRepository recipeRepository,
    required BookmarkRepository bookmarkRepository,
  }): _recipeRepository = recipeRepository,
      _bookmarkRepository = bookmarkRepository;

  Future<List<Recipe>> execute() async {
    final ids = await _bookmarkRepository.getBookmarkIds();
    final recipes = await _recipeRepository.getRecipes();
    return recipes.where((e) => ids.contains(e.id)).toList();
  }

}
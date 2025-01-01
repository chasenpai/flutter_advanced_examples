import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/repository/bookmark_repository.dart';
import 'package:sample_03/domain/repository/recipe_repository.dart';

class GetDishesByCategoryUseCase {

  final RecipeRepository _recipeRepository;
  final BookmarkRepository _bookmarkRepository;

  const GetDishesByCategoryUseCase({
    required RecipeRepository recipeRepository,
    required BookmarkRepository bookmarkRepository,
  }): _recipeRepository = recipeRepository,
      _bookmarkRepository = bookmarkRepository;

  Stream<List<Recipe>> execute(String category) async* {
    final recipes = await _recipeRepository.getRecipes();
    final filteredRecipes = recipes.where((e) => category == 'All' || e.category == category).toList();
    await for(final ids in _bookmarkRepository.bookmarksIdsStream()) {
      yield filteredRecipes
        .map((e) => e.copyWith(isBookmark: ids.contains(e.id)))
        .toList();
    }
  }

}
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/repository/recipe_repository.dart';

class SearchRecipesUseCase {

  final RecipeRepository _recipeRepository;

  const SearchRecipesUseCase({
    required RecipeRepository recipeRepository,
  }): _recipeRepository = recipeRepository;

  Future<List<Recipe>> execute(String query) async {
    return (await _recipeRepository.getRecipes())
      .where((e) => e.name.toLowerCase()
      .contains(query.toLowerCase()))
      .toList();
  }

}
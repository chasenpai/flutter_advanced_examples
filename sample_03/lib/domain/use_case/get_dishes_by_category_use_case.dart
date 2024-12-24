import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/repository/recipe_repository.dart';

class GetDishesByCategoryUseCase {

  final RecipeRepository _recipeRepository;

  const GetDishesByCategoryUseCase({
    required RecipeRepository recipeRepository,
  }): _recipeRepository = recipeRepository;

  Future<List<Recipe>> execute(String category) async {
    final recipes = await _recipeRepository.getRecipes();
    if(category == 'All') {
      return recipes;
    }
    return recipes.where((e) => e.category == category).toList();
  }

}
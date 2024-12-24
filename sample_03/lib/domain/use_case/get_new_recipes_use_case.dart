import 'package:sample_03/core/domain/error/result.dart';
import 'package:sample_03/domain/error/new_recipes_error.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/repository/recipe_repository.dart';

class GetNewRecipesUseCase {

  final RecipeRepository _recipeRepository;

  const GetNewRecipesUseCase({
    required RecipeRepository recipeRepository,
  }): _recipeRepository = recipeRepository;

  Future<Result<List<Recipe>, NewRecipesError>> execute() async {
    try{
      final recipes = await _recipeRepository.getRecipes();
      if(recipes.isEmpty) {
        return const Result.failed(NewRecipesError.noRecipe);
      }
      if(recipes.any((e) => e.category.isEmpty)) {
        return const Result.failed(NewRecipesError.invalidCategory);
      }
      return Result.success(recipes.take(5).toList());
    }catch (e) {
      return const Result.failed(NewRecipesError.unknown);
    }
  }

}


import 'dart:io';

import 'package:sample_03/domain/data_source/recipe_data_source.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/repository/recipe_repository.dart';

class ErrorMockRecipeRepositoryImpl implements RecipeRepository {

  final RecipeDataSource _recipeDataSource;

  ErrorMockRecipeRepositoryImpl({
    required RecipeDataSource recipeDataSource,
  }): _recipeDataSource = recipeDataSource;

  @override
  Future<List<Recipe>> getRecipes() async {
    throw const SocketException('no internet');
    final recipes = await _recipeDataSource.getRecipes();
    return recipes.map((e) => Recipe.fromJson(e)).toList();
  }

  @override
  Future<Recipe?> getRecipe(int id) async {
    final recipes = await getRecipes();
    return recipes.where((e) => e.id == id).firstOrNull;
  }

}
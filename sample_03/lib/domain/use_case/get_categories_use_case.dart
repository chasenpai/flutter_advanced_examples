import 'dart:io';

import 'package:sample_03/core/domain/error/network_error.dart';
import 'package:sample_03/core/domain/error/result.dart';
import 'package:sample_03/domain/repository/recipe_repository.dart';

class GetCategoriesUseCase {

  final RecipeRepository _recipeRepository;

  const GetCategoriesUseCase({
    required RecipeRepository recipeRepository,
  }): _recipeRepository = recipeRepository;

  Future<Result<List<String>, NetworkError>> execute() async {
    try{
      final recipes = await _recipeRepository.getRecipes();
      return Result.success(['All', ...recipes.map((e) => e.category).toSet()]);
    } on SocketException {
      return const Result.failed(NetworkError.noInternet);
    }catch (e) {
      return const Result.failed(NetworkError.unknown);
    }
  }

}
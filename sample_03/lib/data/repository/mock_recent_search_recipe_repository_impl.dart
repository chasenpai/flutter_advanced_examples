import 'package:sample_03/domain/data_source/local_storage.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/repository/recent_search_recipe_repository.dart';

class MockRecentSearchRecipeRepositoryImpl implements RecentSearchRecipeRepository {

  final LocalStorage _localStorage;

  MockRecentSearchRecipeRepositoryImpl({
    required LocalStorage localStorage,
  }): _localStorage = localStorage;

  @override
  Future<List<Recipe>> getRecentSearchRecipes() async {
    try{
      final json = await _localStorage.load();
      return (json['recipes'] as Iterable).map((e) => Recipe.fromJson(e)).toList();
    }catch (e) {
      return [];
    }
  }

  @override
  Future<void> updateRecentSearchRecipes(List<Recipe> recipes) async {
    await _localStorage.save({
      'recipes': recipes.map((e) => e.toJson()),
    });
  }

}
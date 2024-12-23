import 'package:flutter/material.dart';
import 'package:sample_03/data/data_source/local/default_local_storage.dart';
import 'package:sample_03/data/data_source/remote/remote_recipe_data_source.dart';
import 'package:sample_03/data/repository/mock_recent_search_recipe_repository_impl.dart';
import 'package:sample_03/data/repository/mock_recipe_repository_impl.dart';
import 'package:sample_03/domain/data_source/local_storage.dart';
import 'package:sample_03/domain/use_case/search_recipes_use_case.dart';
import 'package:sample_03/presentation/search/screen/search_recipes_screen.dart';
import 'package:sample_03/presentation/search/search_recipes_view_model.dart';

final LocalStorage _localStorage = DefaultLocalStorage();

final _recentSearchRecipeRepository = MockRecentSearchRecipeRepositoryImpl(
  localStorage: _localStorage,
);
final _searchRecipesUseCase = SearchRecipesUseCase(
  recipeRepository: MockRecipeRepositoryImpl(
    recipeDataSource: RemoteRecipeDataSourceImpl(),
  ),
  localStorage: _localStorage,
);

class SearchRecipesRoot extends StatelessWidget {
  const SearchRecipesRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = SearchRecipesViewModel(
      recentSearchRecipeRepository: _recentSearchRecipeRepository,
      searchRecipesUseCase: _searchRecipesUseCase,
    );
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return SearchRecipesScreen(
          state: viewModel.state,
          onChanged: viewModel.searchRecipes,
        );
      },
    );
  }
}

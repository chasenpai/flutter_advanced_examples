import 'package:get_it/get_it.dart';
import 'package:sample_03/data/data_source/local/default_local_storage.dart';
import 'package:sample_03/data/data_source/remote/remote_recipe_data_source.dart';
import 'package:sample_03/data/repository/mock_bookmark_repository_impl.dart';
import 'package:sample_03/data/repository/mock_recent_search_recipe_repository_impl.dart';
import 'package:sample_03/data/repository/mock_recipe_repository_impl.dart';
import 'package:sample_03/domain/data_source/local_storage.dart';
import 'package:sample_03/domain/data_source/recipe_data_source.dart';
import 'package:sample_03/domain/repository/bookmark_repository.dart';
import 'package:sample_03/domain/repository/recent_search_recipe_repository.dart';
import 'package:sample_03/domain/repository/recipe_repository.dart';
import 'package:sample_03/domain/use_case/get_categories_use_case.dart';
import 'package:sample_03/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:sample_03/domain/use_case/search_recipes_use_case.dart';
import 'package:sample_03/presentation/home/home_view_model.dart';
import 'package:sample_03/presentation/saved_recipes/saved_recipes_view_model.dart';
import 'package:sample_03/presentation/search/search_recipes_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {
  //data source
  getIt.registerSingleton<RecipeDataSource>(
    RemoteRecipeDataSourceImpl(),
  );
  getIt.registerSingleton<LocalStorage>(
    DefaultLocalStorage(),
  );

  //repository
  getIt.registerSingleton<RecipeRepository>(
    MockRecipeRepositoryImpl(
      recipeDataSource: getIt(),
    ),
  );
  getIt.registerSingleton<BookmarkRepository>(
    MockBookmarkRepositoryImpl(),
  );
  getIt.registerSingleton<RecentSearchRecipeRepository>(
    MockRecentSearchRecipeRepositoryImpl(
      localStorage: getIt(),
    ),
  );

  //use case
  getIt.registerSingleton<GetSavedRecipesUseCase>(
    GetSavedRecipesUseCase(
      recipeRepository: getIt(),
      bookmarkRepository: getIt(),
    ),
  );
  getIt.registerSingleton<SearchRecipesUseCase>(
    SearchRecipesUseCase(
      recipeRepository: getIt(),
      localStorage: getIt(),
    ),
  );
  getIt.registerSingleton<GetCategoriesUseCase>(
    GetCategoriesUseCase(
      recipeRepository: getIt(),
    ),
  );

  //view model
  getIt.registerFactory<SavedRecipesViewModel>(
    () => SavedRecipesViewModel(
      getSavedRecipesUseCase: getIt(),
    ),
  );
  getIt.registerFactory<SearchRecipesViewModel>(
    () => SearchRecipesViewModel(
      recentSearchRecipeRepository: getIt(),
      searchRecipesUseCase: getIt(),
    ),
  );
  getIt.registerFactory<HomeViewModel>(
    () => HomeViewModel(
      getCategoriesUseCase: getIt(),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_03/config/routing/route_paths.dart';
import 'package:sample_03/data/repository/mock_bookmark_repository_impl.dart';
import 'package:sample_03/data/repository/mock_recipe_repository_impl.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:sample_03/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:sample_03/presentation/sign_in/sign_in_screen.dart';
import 'package:sample_03/presentation/sign_up/sign_up_screen.dart';
import 'package:sample_03/presentation/splash/splash_screen.dart';

final router = GoRouter(
  initialLocation: RoutePaths.splash,
  routes: [
    GoRoute(
      path: RoutePaths.splash,
      builder: (context, state) => SplashScreen(
        onStartCookingTap: () => context.go(RoutePaths.singIn),
      ),
    ),
    GoRoute(
      path: RoutePaths.singIn,
      builder: (context, state) => SignInScreen(
        onSignInTap: () => context.go(RoutePaths.savedRecipes),
        onSignUpTap: () => context.go(RoutePaths.singUp),
      ),
    ),
    GoRoute(
      path: RoutePaths.singUp,
      builder: (context, state) => SignUpScreen(
        onSignInTap: () => context.go(RoutePaths.singIn),
      ),
    ),
    GoRoute(
      path: RoutePaths.savedRecipes,
      builder: (context, state) {
        return FutureBuilder<List<Recipe>>(
            future: GetSavedRecipesUseCase(
              recipeRepository: MockRecipeRepositoryImpl(),
              bookmarkRepository: MockBookmarkRepositoryImpl(),
            ).execute(),
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final recipes = snapshot.data!;
              return SavedRecipesScreen(recipes: recipes,);
            }
        );
      }
    ),
  ],
);

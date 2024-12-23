import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_03/config/routing/route_paths.dart';
import 'package:sample_03/presentation/home/home_screen.dart';
import 'package:sample_03/presentation/notifications/notifications_screen.dart';
import 'package:sample_03/presentation/profile/profile_screen.dart';
import 'package:sample_03/presentation/root/root_screen.dart';
import 'package:sample_03/presentation/saved_recipes/screen/saved_recipes_root.dart';
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
        onSignInTap: () => context.go(RoutePaths.home),
        onSignUpTap: () => context.go(RoutePaths.singUp),
      ),
    ),
    GoRoute(
      path: RoutePaths.singUp,
      builder: (context, state) => SignUpScreen(
        onSignInTap: () => context.go(RoutePaths.singIn),
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return RootScreen(
          body: navigationShell,
          currentPageIndex: navigationShell.currentIndex,
          onPageChanged: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.home,
              builder: (context, state) {
                return HomeScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.savedRecipes,
              builder: (context, state) {
                return SavedRecipesRoot();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.notifications,
              builder: (context, state) {
                return NotificationsScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.profile,
              builder: (context, state) {
                return ProfileScreen();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);

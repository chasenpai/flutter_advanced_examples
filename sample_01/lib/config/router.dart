import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_01/presentation/home_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                context.go('/today');
              },
              child: const Text(
                'GO',
              ),
            ),
          ),
        );
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomeScreen(
          body: navigationShell,
          currentIndex: navigationShell.currentIndex,
          onSelected: (index) {
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
              path: '/today',
              builder: (context, state) {
                return const Center(
                  child: Text(
                    'Today',
                  ),
                );
              }
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/bookmarks',
                builder: (context, state) {
                  return const Center(
                    child: Text(
                      'Bookmarks',
                    ),
                  );
                }
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/friends',
                builder: (context, state) {
                  return const Center(
                    child: Text(
                      'Friends',
                    ),
                  );
                }
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/rador',
                builder: (context, state) {
                  return const Center(
                    child: Text(
                      'Rador',
                    ),
                  );
                }
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/settings',
                builder: (context, state) {
                  return const Center(
                    child: Text(
                      'Settings',
                    ),
                  );
                }
            ),
          ],
        ),
      ],
    ),
  ],
);
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_03/config/routing/route_paths.dart';
import 'package:sample_03/presentation/home/screen/home_screen.dart';

class HomeRoot extends StatelessWidget {
  const HomeRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      name: 'Cha',
      onSearchFieldTap: () => context.push(RoutePaths.searchRecipes),
    );
  }
}

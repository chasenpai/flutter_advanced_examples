import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_03/config/di/di_setup.dart';
import 'package:sample_03/config/routing/route_paths.dart';
import 'package:sample_03/presentation/saved_recipes/saved_recipes_action.dart';
import 'package:sample_03/presentation/saved_recipes/saved_recipes_view_model.dart';
import 'package:sample_03/presentation/saved_recipes/screen/saved_recipes_screen.dart';

class SavedRecipesRoot extends StatelessWidget {
  const SavedRecipesRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<SavedRecipesViewModel>();
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        final state = viewModel.state;
        if(state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return SavedRecipesScreen(
          recipes: state.recipes,
          onAction: (action) {
            if(action is OnTap) {
              context.push('/home/ingredient/${action.recipe.id}');
              return;
            }
            viewModel.onAction(action);
          },
        );
      },
    );
  }
}

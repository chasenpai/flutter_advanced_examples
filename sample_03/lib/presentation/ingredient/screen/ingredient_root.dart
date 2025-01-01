import 'package:flutter/material.dart';
import 'package:sample_03/config/di/di_setup.dart';
import 'package:sample_03/core/presentation/dialogs/rating_dialog.dart';
import 'package:sample_03/core/presentation/dialogs/share_dialog.dart';
import 'package:sample_03/presentation/ingredient/ingredient_action.dart';
import 'package:sample_03/presentation/ingredient/ingredient_view_model.dart';
import 'package:sample_03/presentation/ingredient/screen/ingredient_screen.dart';
import 'package:sample_03/ui/color_styles.dart';

class IngredientRoot extends StatelessWidget {

  final int recipeId;

  const IngredientRoot({
    required this.recipeId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<IngredientViewModel>();
    viewModel.onAction(IngredientAction.loadRecipe(recipeId));
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return viewModel.state.recipe == null
          ? const Center(child: CircularProgressIndicator(),)
          : IngredientScreen(
              state: viewModel.state,
              onMenuTap: (menu) {
                switch(menu) {
                  case IngredientMenu.share:
                    showDialog(
                      context: context,
                      builder: (context) {
                        return ShareDialog(
                          link: 'app.recipe.co/sushi',
                          onCopyLinkTap: (link) {
                            viewModel.onAction(IngredientAction.onShareTap(link));
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: ColorStyles.primary100,
                                content: Text(
                                  'Link Copied',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  case IngredientMenu.rate:
                    showDialog(
                      context: context,
                      builder: (context) {
                        return RatingDialog(
                          title: 'Rate Recipe',
                          buttonText: 'Send',
                          onChanged: (score) {
                            viewModel.onAction(IngredientAction.onRateTap(
                              viewModel.state.recipe!,
                              score,
                            ));
                            Navigator.pop(context);
                          },
                        );
                      },
                    );
                  case IngredientMenu.review:
                    // TODO: Handle this case.
                    throw UnimplementedError();
                  case IngredientMenu.unSave:
                    // TODO: Handle this case.
                    throw UnimplementedError();
                }
              },
              onAction: viewModel.onAction,
            );
      },
    );
  }
}

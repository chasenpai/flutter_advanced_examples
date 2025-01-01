import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/recipe_card.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/presentation/saved_recipes/saved_recipes_action.dart';
import 'package:sample_03/ui/text_styles.dart';

class SavedRecipesScreen extends StatelessWidget {

  final List<Recipe> recipes;
  final void Function(SavedRecipesAction action) onAction;

  const SavedRecipesScreen({
    required this.recipes,
    required this.onAction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Saved Recipes',
          style: TextStyles.mediumTextBold,
        ),
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(

        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onAction(SavedRecipesAction.onTap(recipes[index])),
                child: RecipeCard(
                  onBookmarkTap: (recipe) {
                    onAction(SavedRecipesAction.onBookmarkTap(recipe));
                  },
                  recipe: recipes[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

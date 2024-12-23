import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/recipe_grid_item.dart';
import 'package:sample_03/core/presentation/components/search_input_field.dart';
import 'package:sample_03/presentation/search/search_recipes_state.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class SearchRecipesScreen extends StatelessWidget {

  final SearchRecipesState state;
  final ValueChanged<String> onChanged;
  final VoidCallback onFilterTap;

  const SearchRecipesScreen({
    required this.state,
    required this.onChanged,
    required this.onFilterTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search recipes',
          style: TextStyles.mediumTextBold,
        ),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 17.0,),
            Row(
              children: [
                Expanded(
                  child: SearchInputField(
                    placeHolder: 'Search recipe',
                    onChanged: onChanged,
                  ),
                ),
                const SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: onFilterTap,
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: ColorStyles.primary100,
                    ),
                    child: const Icon(
                      Icons.tune,
                      color: ColorStyles.white,
                      size: 22.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0,),
            Row(
              children: [
                Text(
                  state.title,
                  style: TextStyles.normalTextBold,
                ),
                const Spacer(),
                Text(
                  state.recipesCount,
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.grey3
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0,),
            Expanded(
              child: state.isLoading
                ? const Center(child: CircularProgressIndicator(),)
                : GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                    ),
                    itemCount: state.recipes.length,
                    itemBuilder: (context, index) {
                      final recipe = state.recipes[index];
                      return RecipeGridItem(
                        recipe: recipe,
                      );
                    },
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/dish_card.dart';
import 'package:sample_03/core/presentation/components/new_recipe_card.dart';
import 'package:sample_03/core/presentation/components/recipe_category_selector.dart';
import 'package:sample_03/core/presentation/components/search_input_field.dart';
import 'package:sample_03/presentation/home/home_action.dart';
import 'package:sample_03/presentation/home/home_state.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class HomeScreen extends StatelessWidget {

  final void Function(HomeAction) onAction;
  final HomeState state;

  const HomeScreen({
    required this.onAction,
    required this.state,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20.0,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, ${state.name}',
                            style: TextStyles.largeTextBold,
                          ),
                          const SizedBox(height: 5.0,),
                          Text(
                            'What are you cooking today?',
                            style: TextStyles.smallerTextRegular.copyWith(
                              color: ColorStyles.grey3,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: ColorStyles.secondary40,
                        ),
                        child: Image.asset(
                          'assets/images/avatar.png',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0,),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => onAction(const HomeAction.onSearchFieldTap()),
                          child: const IgnorePointer(
                            child: SearchInputField(
                              placeHolder: 'Search recipe',
                              isReadOnly: true,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0,),
                      Container(
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
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0,),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: RecipeCategorySelector(
                categories: state.categories,
                selectedCategory: state.selectedCategory,
                onCategorySelected: (category) => onAction(HomeAction.onCategorySelected(category)),
              ),
            ),
            const SizedBox(height: 15.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.dishes.asMap().entries.map((e) {
                  final index = e.key;
                  final dish = e.value;
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index + 1 == state.dishes.length ? 30.0 : 15.0,
                      left: index == 0 ? 30.0 : 0.0,
                    ),
                    child: DishCard(
                      recipe: dish,
                      onBookmarkTap: (recipe) {
                        onAction(HomeAction.onBookmarkTap(recipe));
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20.0,),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Text(
                'New Recipes',
                style: TextStyles.normalTextBold,
              ),
            ),
            const SizedBox(height: 5.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.newRecipes.asMap().entries.map((e) {
                  final index = e.key;
                  final recipe = e.value;
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index + 1 == state.newRecipes.length ? 30.0 : 15.0,
                      left: index == 0 ? 30.0 : 0.0,
                    ),
                    child: NewRecipeCard(
                      recipe: recipe,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/recipe_category_selector.dart';
import 'package:sample_03/core/presentation/components/search_input_field.dart';
import 'package:sample_03/presentation/home/home_state.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class HomeScreen extends StatelessWidget {

  final String name;
  final VoidCallback onSearchFieldTap;
  final ValueChanged<String> onCategorySelected;
  final HomeState state;

  const HomeScreen({
    required this.name,
    required this.onSearchFieldTap,
    required this.onCategorySelected,
    required this.state,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
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
                          'Hello, $name',
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
                        onTap: onSearchFieldTap,
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
              onCategorySelected: onCategorySelected,
            ),
          ),
        ],
      ),
    );
  }
}

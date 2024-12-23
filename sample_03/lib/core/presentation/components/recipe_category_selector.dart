import 'package:flutter/material.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class RecipeCategorySelector extends StatelessWidget {

  final List<String> categories;
  final String selectedCategory;
  final ValueChanged<String> onCategorySelected;

  const RecipeCategorySelector({
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.asMap().entries.map((e) {
          final index = e.key;
          final category = e.value;
          return Padding(
            padding: EdgeInsets.only(
              right: index + 1 == categories.length ? 30.0 : 0.0,
              left: index == 0 ? 30.0 : 0.0,
            ),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque, //padding 영역까지 onTap
              onTap: () => onCategorySelected(category),
              child: category == selectedCategory
                ? _SelectedCategory(category: category,)
                : _UnSelectedCategory(category: category,),
            ),
          );
        }
        ).toList(),
      ),
    );
  }
}

class _SelectedCategory extends StatelessWidget {

  final String category;

  const _SelectedCategory({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: ColorStyles.primary100,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 7.0,
      ),
      child: Text(
        category,
        style: TextStyles.smallerTextBold.copyWith(
          color: ColorStyles.white,
        ),
      ),
    );
  }
}

class _UnSelectedCategory extends StatelessWidget {

  final String category;

  const _UnSelectedCategory({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 7.0,
      ),
      child: Text(
        category,
        style: TextStyles.smallerTextBold.copyWith(
          color: ColorStyles.primary80,
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:sample_03/domain/model/ingredient.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class IngredientItem extends StatelessWidget {

  final Ingredient ingredient;

  const IngredientItem({
    required this.ingredient,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: ColorStyles.grey4,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 12.0,
      ),
      child: Row(
        children: [
          Container(
            width: 52.0,
            height: 52.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: ColorStyles.white,
            ),
            child: Image.network(
              ingredient.image,
              width: 40.0,
              height: 40.0,
            ),
          ),
          const SizedBox(width: 16.0,),
          Text(
            ingredient.name,
            style: TextStyles.normalTextBold,
          ),
          const Spacer(),
          Text(
            '500g',
            style: TextStyles.smallTextRegular.copyWith(
              color: ColorStyles.grey3,
            ),
          ),
        ],
      ),
    );
  }
}

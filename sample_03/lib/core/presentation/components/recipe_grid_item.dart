import 'package:flutter/material.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class RecipeGridItem extends StatelessWidget {

  final Recipe recipe;

  const RecipeGridItem({
    required this.recipe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                  recipe.image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    recipe.name,
                    style: TextStyles.smallTextBold.copyWith(
                      color: ColorStyles.white,
                    ),
                  ),
                ),
                Text(
                  'By ${recipe.chef}',
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 37,
              height: 16,
              decoration: BoxDecoration(
                color: ColorStyles.secondary20,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: ColorStyles.rating,
                    size: 12.0,
                  ),
                  Text(
                    recipe.rating.toString(),
                    style: TextStyles.smallerTextRegular,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

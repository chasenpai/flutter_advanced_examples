import 'package:flutter/material.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class NewRecipeCard extends StatelessWidget {
  final Recipe recipe;

  const NewRecipeCard({
    required this.recipe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 251.0,
      height: 157.0,
      child: Stack(
        children: [
          Positioned(
            top: 32.0,
            child: Container(
              width: 251.0,
              height: 95.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: ColorStyles.white,
                boxShadow: [
                  BoxShadow(
                    color: ColorStyles.black.withOpacity(0.085),
                    spreadRadius: 1.0,
                    blurRadius: 16.0,
                  ),
                ]
              ),
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 9.3,
              ),
            ),
          ),
          Positioned(
            top: 42.0,
            left: 9.3,
            child: SizedBox(
              width: 140.0,
              child: Text(
                recipe.name,
                style: TextStyles.smallTextBold.copyWith(
                  color: ColorStyles.grey1,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Positioned(
            top: 70.0,
            left: 9.3,
            child: Row(
              children: List.generate(recipe.rating.toInt(), (index) {
                return const Icon(
                  Icons.star,
                  color: ColorStyles.rating,
                  size: 13.0,
                );
              }),
            ),
          ),
          Positioned(
            left: 9.3,
            top: 93.0,
            child: Row(
              children: [
                SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(recipe.image,),
                  ),
                ),
                const SizedBox(width: 8.0,),
                Text(
                  recipe.chef,
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.grey3,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 9.3,
            child: SizedBox(
              width: 80.0,
              height: 86.0,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  recipe.image,
                ),
              ),
            ),
          ),
          Positioned(
            right: 9.3,
            top: 97.0,
            child: Row(
              children: [
                const Icon(
                  Icons.alarm,
                  color: ColorStyles.grey3,
                  size: 18.0,
                ),
                const SizedBox(width: 8.0,),
                Text(
                  recipe.time,
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.grey3,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

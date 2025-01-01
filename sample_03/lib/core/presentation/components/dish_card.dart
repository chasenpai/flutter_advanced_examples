import 'package:flutter/material.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class DishCard extends StatelessWidget {

  final Recipe recipe;
  final void Function(Recipe recipe) onBookmarkTap;

  const DishCard({
    required this.recipe,
    required this.onBookmarkTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      height: 230.0,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            child: Container(
              width: 150.0,
              height: 176.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: ColorStyles.grey4,
              ),
              child: Center(
                child: SizedBox(
                  width: 130.0,
                  height: 42.0,
                  child: Text(
                    recipe.name,
                    style: TextStyles.smallTextBold,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Time',
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.grey3,
                  ),
                ),
                const SizedBox(height: 5.0,),
                Text(
                  recipe.time,
                  style: TextStyles.smallerTextBold.copyWith(
                    color: ColorStyles.grey1,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10.0,
            bottom: 10.0,
            child: GestureDetector(
              onTap: () => onBookmarkTap(recipe),
              child: Container(
                width: 24.0,
                height: 24.0,
                decoration: const BoxDecoration(
                  color: ColorStyles.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.bookmark_outline,
                  color: recipe.isBookmark ? ColorStyles.primary80 : ColorStyles.grey3,
                  size: 16.0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: SizedBox(
              width: 110.0,
              height: 110.0,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  recipe.image,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            top: 30.0,
            child: Container(
              width: 45.0,
              height: 23.0,
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
                  const SizedBox(width: 2.0,),
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

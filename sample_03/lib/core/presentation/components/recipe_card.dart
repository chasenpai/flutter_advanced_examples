import 'package:flutter/material.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class RecipeCard extends StatelessWidget {

  final Recipe recipe;

  const RecipeCard({
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
          AspectRatio(
            aspectRatio: 315 /150,
            child: Container(
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
            right: 10,
            bottom: 10,
            child: Row(
              children: [
                Icon(
                  Icons.alarm,
                  color: ColorStyles.white,
                  size: 17.0,
                ),
                const SizedBox(width: 5.0,),
                Text(
                  recipe.time,
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
                const SizedBox(width: 10.0,),
                ClipOval(
                  child: Container(
                    color: ColorStyles.white,
                    padding: const EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.bookmark_border_outlined,
                      color: ColorStyles.primary80,
                      size: 16.0,
                    ),
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
                  Icon(
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

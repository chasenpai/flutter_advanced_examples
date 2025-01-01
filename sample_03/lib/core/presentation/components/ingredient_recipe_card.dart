import 'package:flutter/material.dart';
import 'package:sample_03/domain/model/recipe.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class IngredientRecipeCard extends StatelessWidget {

  final Recipe recipe;
  final void Function(Recipe recipe) onBookmarkTap;

  const IngredientRecipeCard({
    required this.recipe,
    required this.onBookmarkTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 315 / 150,
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
                right: 10,
                bottom: 10,
                child: Row(
                  children: [
                    const Icon(
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
                    GestureDetector(
                      onTap: () => onBookmarkTap(recipe),
                      child: ClipOval(
                        child: Container(
                          color: ColorStyles.white,
                          padding: const EdgeInsets.all(3.0),
                          child: const Icon(
                            Icons.bookmark_border_outlined,
                            color: ColorStyles.primary80,
                            size: 16.0,
                          ),
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
          const SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 194.0,
                  child: Text(
                    recipe.name,
                    style: TextStyles.smallTextBold.copyWith(
                      color: ColorStyles.black,
                    ),
                    maxLines: 2,
                  ),
                ),
                const Spacer(),
                Text(
                  '(13k Reviews)',
                  style: TextStyles.smallTextRegular.copyWith(
                    color: ColorStyles.grey3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

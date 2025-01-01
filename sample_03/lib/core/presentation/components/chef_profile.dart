import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/small_button.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class ChefProfile extends StatelessWidget {
  const ChefProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.network(
            'https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png',
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Laura wilson',
              style: TextStyles.smallTextBold,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: ColorStyles.primary80,
                  size: 18.0,
                ),
                const SizedBox(width: 1.0,),
                Text(
                  'Lagos Nigeria',
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.grey3,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          width: 85.0,
          height: 37.0,
          child: SmallButton(
            text: 'Follow',
            onPressed: () {

            },
          ),
        ),
      ],
    );
  }
}

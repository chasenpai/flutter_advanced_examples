import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/medium_button.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class SplashScreen extends StatelessWidget {

  final VoidCallback onStartCookingTap;

  const SplashScreen({
    required this.onStartCookingTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash_image.png',
             width: double.infinity,
             height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            child: Column(
              children: [
                const SizedBox(height: 104.0,),
                Image.asset(
                  'assets/images/crown.png',
                  width: 79,
                  height: 79,
                ),
                const SizedBox(height: 14.0,),
                Text(
                  '100K+ Premium Recipe',
                  style: TextStyles.mediumTextBold.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 213.0,
                  child: Text(
                    'Get Cooking',
                    style: TextStyles.headerTextBold.copyWith(
                      color: ColorStyles.white,
                      fontSize: 48.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20.0,),
                Text(
                  'Simple way to find Tasty Recipe',
                  style: TextStyles.normalTextRegular.copyWith(
                    color: ColorStyles.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 64.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 66.0,
                  ),
                  child: MediumButton(
                    text: 'Start Cooking',
                    onPressed: onStartCookingTap,
                  ),
                ),
                SizedBox(
                  height: 50.0 + MediaQuery.of(context).padding.bottom,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

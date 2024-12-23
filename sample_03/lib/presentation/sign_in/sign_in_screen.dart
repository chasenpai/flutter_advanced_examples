import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/large_button.dart';
import 'package:sample_03/core/presentation/components/input_field.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class SignInScreen extends StatelessWidget {

  final VoidCallback onSignInTap;
  final VoidCallback onSignUpTap;

  const SignInScreen({
    required this.onSignInTap,
    required this.onSignUpTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0,),
              const Text(
                'Hello,',
                style: TextStyles.headerTextBold,
              ),
              const Text(
                'Welcome Back!',
                style: TextStyles.largeTextRegular,
              ),
              const SizedBox(height: 57.0,),
              const InputField(
                label: 'Email',
                placeHolder: 'Enter Email',
              ),
              const SizedBox(height: 30.0,),
              const InputField(
                label: 'Password',
                placeHolder: 'Enter Password',
              ),
              const SizedBox(height: 20.0,),
              Text(
                'Forgot Password?',
                style: TextStyles.smallerTextRegular.copyWith(
                  color: ColorStyles.secondary100,
                ),
              ),
              const SizedBox(height: 25.0,),
              LargeButton(
                text: 'Sign In',
                onPressed: onSignInTap,
              ),
              const SizedBox(height: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 1.0,
                    color: ColorStyles.grey4,
                  ),
                  const SizedBox(width: 7.0,),
                  Text(
                    'Or Sign in With',
                    style: TextStyles.smallerTextBold.copyWith(
                      color: ColorStyles.grey4,
                    ),
                  ),
                  const SizedBox(width: 7.0,),
                  Container(
                    width: 50.0,
                    height: 1.0,
                    color: ColorStyles.grey4,
                  ),
                ],
              ),
              const SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google_button.png',
                    width: 60.0,
                    height: 60.0,
                  ),
                  const SizedBox(width: 15.0,),
                  Image.asset(
                    'assets/images/facebook_button.png',
                    width: 60.0,
                    height: 60.0,
                  ),
                ],
              ),
              const SizedBox(height: 55.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyles.smallerTextBold,
                  ),
                  GestureDetector(
                    onTap: onSignUpTap,
                    child: Text(
                      "Sign up",
                      style: TextStyles.smallerTextBold.copyWith(
                        color: ColorStyles.secondary100,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

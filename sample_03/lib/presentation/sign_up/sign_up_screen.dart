import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/large_button.dart';
import 'package:sample_03/core/presentation/components/input_field.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class SignUpScreen extends StatefulWidget {

  final VoidCallback onSignInTap;

  const SignUpScreen({
    required this.onSignInTap,
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0,),
                const Text(
                  'Create an account',
                  style: TextStyles.largeTextBold,
                ),
                const SizedBox(
                  width: 200.0,
                  child: Text(
                    "Let's help you set up your account, it won't take long.",
                    style: TextStyles.smallerTextRegular,
                  ),
                ),
                const SizedBox(height: 20.0,),
                const InputField(
                  label: 'Name',
                  placeHolder: 'Enter Name',
                ),
                const SizedBox(height: 20.0,),
                const InputField(
                  label: 'Email',
                  placeHolder: 'Enter Email',
                ),
                const SizedBox(height: 20.0,),
                const InputField(
                  label: 'Password',
                  placeHolder: 'Enter Password',
                ),
                const SizedBox(height: 20.0,),
                const InputField(
                  label: 'Confirm Password',
                  placeHolder: 'Retype Password',
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: ColorStyles.secondary100,
                      ),
                      activeColor: ColorStyles.secondary100,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      'Accept terms & Condition',
                      style: TextStyles.smallerTextRegular.copyWith(
                        color: ColorStyles.secondary100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 26.0,),
                LargeButton(
                  text: 'Sign Up',
                  onPressed: () {
            
                  },
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
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already a member? ",
                      style: TextStyles.smallerTextBold,
                    ),
                    GestureDetector(
                      onTap: widget.onSignInTap,
                      child: Text(
                        "Sign In",
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
      ),
    );
  }
}

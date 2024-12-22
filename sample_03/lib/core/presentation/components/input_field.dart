import 'package:flutter/material.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class InputField extends StatelessWidget {

  final String label;
  final String placeHolder;
  final TextEditingController? controller;

  const InputField({
    required this.label,
    required this.placeHolder,
    this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.smallerTextRegular,
        ),
        const SizedBox(height: 5.0,),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: ColorStyles.grey4,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: ColorStyles.primary80,
              ),
            ),
            hintText: placeHolder,
            hintStyle: TextStyles.smallerTextRegular.copyWith(
              color: ColorStyles.grey4,
            ),
          ),
        ),
      ],
    );
  }
}

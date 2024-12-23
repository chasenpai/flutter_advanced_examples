import 'package:flutter/material.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class SearchInputField extends StatelessWidget {

  final String placeHolder;
  final TextEditingController? controller;
  final bool isReadOnly;
  final ValueChanged<String>? onChanged;

  const SearchInputField({
    required this.placeHolder,
    this.controller,
    this.isReadOnly = false,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: TextField(
        readOnly: isReadOnly,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: ColorStyles.grey4,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: ColorStyles.grey4,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: ColorStyles.primary80,
            ),
          ),
          hintText: placeHolder,
          hintStyle: TextStyles.smallerTextRegular.copyWith(
            color: ColorStyles.grey4,
          ),
        ),
      ),
    );
  }
}

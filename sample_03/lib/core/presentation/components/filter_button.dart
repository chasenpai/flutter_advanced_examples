import 'package:flutter/material.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class FilterButton extends StatelessWidget {

  final String text;
  final bool isSelected;

  const FilterButton({
    required this.text,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: isSelected ? ColorStyles.primary100 : ColorStyles.white,
      label: Text(
        text,
        style: TextStyles.smallerTextRegular.copyWith(
          color: isSelected ? ColorStyles.white : ColorStyles.primary80,
        ),
      ),
      side: const BorderSide(
        color: ColorStyles.primary100,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

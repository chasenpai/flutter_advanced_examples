import 'package:flutter/material.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class DoubleTabs extends StatelessWidget {

  final List<String> labels;
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const DoubleTabs({
    required this.labels,
    this.selectedIndex = 0,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChanged(0);
            },
            child: Container(
              height: 33,
              decoration: BoxDecoration(
                color: selectedIndex == 0 ? ColorStyles.primary100 : ColorStyles.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    labels[0],
                    style: TextStyles.smallerTextBold.copyWith(
                      color: selectedIndex == 0 ? ColorStyles.white : ColorStyles.primary80,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 15.0,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChanged(1);
            },
            child: Container(
              height: 33,
              decoration: BoxDecoration(
                color: selectedIndex == 1 ? ColorStyles.primary100 : ColorStyles.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    labels[1],
                    style: TextStyles.smallerTextBold.copyWith(
                      color: selectedIndex == 1 ? ColorStyles.white : ColorStyles.primary80,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

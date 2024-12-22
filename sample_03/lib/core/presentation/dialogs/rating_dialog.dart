import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/small_button.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class RatingDialog extends StatefulWidget {

  final String title;
  final String buttonText;
  final ValueChanged<int> onChanged;

  const RatingDialog({
    required this.title,
    required this.buttonText,
    required this.onChanged,
    super.key,
  });

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          widget.title,
          style: TextStyles.smallerTextRegular,
        ),
      ),
      content: _RatingBar(
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
      actions: [
        SmallButton(
          text: widget.buttonText,
          color: ColorStyles.rating,
          textStyle: TextStyles.smallerTextRegular,
          onPressed: () {
            widget.onChanged(_value);
          },
        ),
      ],
    );
  }
}

class _RatingBar extends StatelessWidget {

  final int value;
  final ValueChanged<int> onChanged;

  const _RatingBar({
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTapDown: (_) {
            onChanged(index + 1);
          },
          child: Icon(
            value - 1>= index ? Icons.star : Icons.star_border,
            size: 28.0,
            color: ColorStyles.rating,
          ),
        );
      }),
    );
  }
}


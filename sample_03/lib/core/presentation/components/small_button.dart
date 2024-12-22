import 'package:flutter/material.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class SmallButton extends StatefulWidget {

  final String text;
  final VoidCallback onPressed;

  const SmallButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {

  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        height: 37,
        decoration: BoxDecoration(
          color: _isPressed ? ColorStyles.grey4 : ColorStyles.primary100,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyles.normalTextBold.copyWith(
                color: ColorStyles.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class SmallButton extends StatefulWidget {

  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final TextStyle textStyle;

  const SmallButton({
    required this.text,
    required this.onPressed,
    this.color = ColorStyles.primary100,
    this.textStyle = TextStyles.smallerTextBold,
    super.key,
  });

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {

  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final buttonColor = widget.onPressed == null
      ? ColorStyles.grey4
      : (_isPressed ? ColorStyles.grey4 : widget.color);
    return GestureDetector(
      onTapDown: widget.onPressed == null ? null : (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: widget.onPressed == null ? null : (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onPressed?.call();
      },
      onTapCancel: widget.onPressed == null ? null : () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        height: 37,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: widget.textStyle.copyWith(
                color: ColorStyles.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

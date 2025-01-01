import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/small_button.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class ShareDialog extends StatelessWidget {

  final String link;
  final void Function(String link) onCopyLinkTap;

  const ShareDialog({
    required this.link,
    required this.onCopyLinkTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      content: SizedBox(
        width: 280.0,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Recipe Link',
                  style: TextStyles.largeTextBold,
                ),
                const SizedBox(height: 10.0,),
                Text(
                  'Copy recipe link and share your recipe link with friends and family',
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.grey2,
                  ),
                ),
                const SizedBox(height: 10.0,),
                Stack(
                  children: [
                    Container(
                      width: 280.0,
                      height: 44.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: ColorStyles.grey4,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 14.0,
                          top: 13.0,
                        ),
                        child: Text(
                          link,
                          style: TextStyles.smallerTextBold,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: SizedBox(
                        width: 85.0,
                        height: 43.0,
                        child: SmallButton(
                          text: 'Copy Link',
                          onPressed: () => onCopyLinkTap(link),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Positioned(
              right: 0.0,
              child: Icon(
                Icons.close,
                size: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

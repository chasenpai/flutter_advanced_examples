import 'package:flutter/material.dart';
import 'package:sample_03/domain/model/procedure.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

class ProcedureItem extends StatelessWidget {

  final Procedure procedure;

  const ProcedureItem({
    required this.procedure,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: ColorStyles.grey4,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step ${procedure.step}',
          ),
          const SizedBox(height: 5.0,),
          Text(
            procedure.content,
            style: TextStyles.smallerTextRegular.copyWith(
              color: ColorStyles.grey3,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/filter_button.dart';

class FilterButtons extends StatelessWidget {
  final List<String> items;
  final String selectedItem;
  final ValueChanged<String> onItemSelected;

  const FilterButtons({
    required this.items,
    required this.selectedItem,
    required this.onItemSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: items.expand((e) {
        return [
          GestureDetector(
            onTap: () => onItemSelected(e),
            child: FilterButton(
              text: e,
              isSelected: e == selectedItem,
            ),
          ),
          const SizedBox(width: 10.0,),
        ];
      }).toList(),
    );
  }
}

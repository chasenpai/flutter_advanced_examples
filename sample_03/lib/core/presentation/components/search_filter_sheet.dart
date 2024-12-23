import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/filter_buttons.dart';
import 'package:sample_03/core/presentation/components/small_button.dart';
import 'package:sample_03/domain/filter/filter_state.dart';
import 'package:sample_03/ui/text_styles.dart';

class SearchFilterSheet extends StatefulWidget {

  final FilterState state;
  final ValueChanged<FilterState> onFilterChange;

  const SearchFilterSheet({
    required this.state,
    required this.onFilterChange,
    super.key,
  });

  @override
  State<SearchFilterSheet> createState() => _SearchFilterSheetState();
}

class _SearchFilterSheetState extends State<SearchFilterSheet> {

  late FilterState _state;

  @override
  void initState() {
    super.initState();
    _state = widget.state;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 31.0,),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Filter Search',
              style: TextStyles.smallTextBold,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20.0,),
          const Text(
            'Time',
            style: TextStyles.smallTextBold,
          ),
          const SizedBox(height: 10.0,),
          FilterButtons(
            items: [
              'All',
              'Newest',
              'Oldest',
              'Popularity'
            ],
            selectedItem: _state.time,
            onItemSelected: (value) {
              setState(() {
                _state = _state.copyWith(
                  time: value,
                );
              });
            },
          ),
          const SizedBox(height: 20.0,),
          const Text(
            'Rate',
            style: TextStyles.smallTextBold,
          ),
          const SizedBox(height: 10.0,),
          FilterButtons(
            items: [
              '5',
              '4',
              '3',
              '2',
              '1'
            ],
            selectedItem: _state.rate.toString(),
            onItemSelected: (value) {
              setState(() {
                _state = _state.copyWith(
                  rate: int.parse(value),
                );
              });
            },
          ),
          const SizedBox(height: 20.0,),
          const Text(
            'Category',
            style: TextStyles.smallTextBold,
          ),
          const SizedBox(height: 10.0,),
          FilterButtons(
            items: [
              'All',
              'Cereal',
              'Vegetables',
              'Dinner',
              'Chinese',
              'Local Dish',
              'Fruit',
              'BreakFast',
              'Spanish',
              'Lunch',
            ],
            selectedItem: _state.category,
            onItemSelected: (value) {
              setState(() {
                _state = _state.copyWith(
                  category: value,
                );
              });
            },
          ),
          const SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 174.0,
                child: SmallButton(
                  text: 'Filter',
                  onPressed: () {
                    widget.onFilterChange(_state);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 22.0 + MediaQuery.of(context).padding.bottom,),
        ],
      ),
    );
  }
}

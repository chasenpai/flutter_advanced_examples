import 'package:flutter/material.dart';
import 'package:sample_03/config/di/di_setup.dart';
import 'package:sample_03/core/presentation/components/search_filter_sheet.dart';
import 'package:sample_03/presentation/search/screen/search_recipes_screen.dart';
import 'package:sample_03/presentation/search/search_recipes_view_model.dart';

class SearchRecipesRoot extends StatelessWidget {
  const SearchRecipesRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<SearchRecipesViewModel>();
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return SearchRecipesScreen(
          state: viewModel.state,
          onChanged: viewModel.searchRecipes,
          onFilterTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return SearchFilterSheet(
                  state: viewModel.state.filterState,
                  onFilterChange: (state) {
                    viewModel.onFilterChanged(state);
                    Navigator.pop(context);
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}

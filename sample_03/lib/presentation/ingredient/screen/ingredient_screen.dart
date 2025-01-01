import 'package:flutter/material.dart';
import 'package:sample_03/core/presentation/components/chef_profile.dart';
import 'package:sample_03/core/presentation/components/double_tabs.dart';
import 'package:sample_03/core/presentation/components/ingredient_item.dart';
import 'package:sample_03/core/presentation/components/ingredient_recipe_card.dart';
import 'package:sample_03/core/presentation/components/procedure_item.dart';
import 'package:sample_03/presentation/ingredient/ingredient_action.dart';
import 'package:sample_03/presentation/ingredient/ingredient_state.dart';
import 'package:sample_03/ui/color_styles.dart';
import 'package:sample_03/ui/text_styles.dart';

enum IngredientMenu{
  share,
  rate,
  review,
  unSave,
}

class IngredientScreen extends StatelessWidget {

  final IngredientState state;
  final void Function(IngredientAction action) onAction;
  final void Function(IngredientMenu menu) onMenuTap;

  const IngredientScreen({
    required this.state,
    required this.onAction,
    required this.onMenuTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.more_horiz,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () => onMenuTap(IngredientMenu.share),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.share,
                        size: 20.0,
                      ),
                      SizedBox(width: 16.0,),
                      Text(
                        'Share',
                        style: TextStyles.smallTextRegular,
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () => onMenuTap(IngredientMenu.rate),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20.0,
                      ),
                      SizedBox(width: 16.0,),
                      Text(
                        'Rate',
                        style: TextStyles.smallTextRegular,
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () => onMenuTap(IngredientMenu.review),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.comment,
                        size: 20.0,
                      ),
                      SizedBox(width: 16.0,),
                      Text(
                        'Review',
                        style: TextStyles.smallTextRegular,
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () => onMenuTap(IngredientMenu.unSave),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.bookmark,
                        size: 20.0,
                      ),
                      SizedBox(width: 16.0,),
                      Text(
                        'Unsave',
                        style: TextStyles.smallTextRegular,
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            children: [
              IngredientRecipeCard(
                recipe: state.recipe!,
                onBookmarkTap: (recipe) {

                },
              ),
              const SizedBox(height: 10.0,),
              const ChefProfile(),
              const SizedBox(height: 20.0,),
              DoubleTabs(
                selectedIndex: state.selectedTabIndex,
                labels: const ['Ingredient', 'Procedure'],
                onChanged: (index) {
                  if(index == 0) {
                    onAction(const IngredientAction.onIngredientTap());
                  }else {
                    onAction(const IngredientAction.onProcedureTap());
                  }
                },
              ),
              const SizedBox(height: 35.0,),
              Expanded(
                child: IndexedStack(
                  index: state.selectedTabIndex,
                  children: [
                    _IngredientList(state: state),
                    _ProcedureList(state: state)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProcedureList extends StatelessWidget {
  const _ProcedureList({
    super.key,
    required this.state,
  });

  final IngredientState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.room_service,
              color: ColorStyles.grey3,
              size: 17.0,
            ),
            const SizedBox(width: 5.0,),
            Text(
              '1 serve',
              style: TextStyles.smallerTextRegular.copyWith(
                color: ColorStyles.grey3,
              ),
            ),
            const Spacer(),
            Text(
              '${state.procedures.length} Steps',
              style: TextStyles.smallerTextRegular.copyWith(
                color: ColorStyles.grey3,
              ),
            ),
          ],
        ),
        const SizedBox(height: 23.5,),
        Expanded(
          child: ListView.builder(
            itemCount: state.procedures.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ProcedureItem(
                    procedure: state.procedures[index],
                  ),
                  const SizedBox(height: 10.0,),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _IngredientList extends StatelessWidget {

  final IngredientState state;

  const _IngredientList({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.room_service,
              color: ColorStyles.grey3,
              size: 17.0,
            ),
            const SizedBox(width: 5.0,),
            Text(
              '1 serve',
              style: TextStyles.smallerTextRegular.copyWith(
                color: ColorStyles.grey3,
              ),
            ),
            const Spacer(),
            Text(
              '${state.ingredients.length} items',
              style: TextStyles.smallerTextRegular.copyWith(
                color: ColorStyles.grey3,
              ),
            ),
          ],
        ),
        const SizedBox(height: 23.5,),
        Expanded(
          child: ListView.builder(
            itemCount: state.ingredients.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  IngredientItem(
                    ingredient: state.ingredients[index],
                  ),
                  const SizedBox(height: 10.0,),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

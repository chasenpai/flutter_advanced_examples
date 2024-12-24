import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_03/config/di/di_setup.dart';
import 'package:sample_03/config/routing/route_paths.dart';
import 'package:sample_03/presentation/home/home_view_model.dart';
import 'package:sample_03/presentation/home/screen/home_screen.dart';

class HomeRoot extends StatefulWidget {
  const HomeRoot({super.key});

  @override
  State<HomeRoot> createState() => _HomeRootState();
}

class _HomeRootState extends State<HomeRoot> {

  late HomeViewModel _viewModel;
  StreamSubscription? _eventSubscription;

  @override
  void initState() {
    super.initState();
    _viewModel = getIt<HomeViewModel>();
    _eventSubscription = _viewModel.eventStream.listen((event) {
      log(event.toString());
      if(mounted) {
        final snackBor = SnackBar(content: Text(event.toString(),),);
        ScaffoldMessenger.of(context).showSnackBar(snackBor);
      }
    });
  }

  @override
  void dispose() {
    _eventSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _viewModel,
      builder: (context, widget) {
        return HomeScreen(
          name: 'Cha',
          onSearchFieldTap: () => context.push(RoutePaths.searchRecipes),
          onCategorySelected: _viewModel.onCategorySelected,
          state: _viewModel.state,
        );
      },
    );
  }
}

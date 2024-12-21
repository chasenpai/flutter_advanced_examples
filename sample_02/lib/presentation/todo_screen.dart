import 'package:flutter/material.dart';
import 'package:sample_02/config/di_setup.dart';
import 'package:sample_02/presentation/todo_view_model.dart';

class TodoScreen extends StatefulWidget {

  const TodoScreen({
    super.key,
  });

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {

  late final TodoViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = getIt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) {
          return viewModel.state.isLoading
            ? Center(child: CircularProgressIndicator(),)
            : ListView.builder(
              itemCount: viewModel.state.todos.length,
              itemBuilder: (_, index) {
                return Text(
                  viewModel.state.todos[index].toString(),
                );
              },
            );
        },
      ),
    );
  }
}

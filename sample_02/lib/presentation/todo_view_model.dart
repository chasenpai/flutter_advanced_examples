import 'package:flutter/material.dart';
import 'package:sample_02/domain/todo_repository.dart';
import 'package:sample_02/presentation/todo_state.dart';

class TodoViewModel with ChangeNotifier {

  final TodoRepository _todoRepository;

  TodoViewModel(this._todoRepository) {
    _loadTodos();
  }

  TodoState _state = const TodoState();

  TodoState get state => _state;

  void _loadTodos() async {
    _state = state.copyWith(
      isLoading: true,
    );
    notifyListeners();

    final todos = await _todoRepository.getTodos();
    _state = state.copyWith(
      isLoading: false,
      todos: todos,
    );
    notifyListeners();
  }

}
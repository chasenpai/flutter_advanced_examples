import 'package:sample_02/domain/todo.dart';

abstract interface class TodoRepository {

  Future<List<Todo>> getTodos();

}
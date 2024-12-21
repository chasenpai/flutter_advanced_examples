import 'package:get_it/get_it.dart';
import 'package:sample_02/data/todo_repository_impl.dart';
import 'package:sample_02/presentation/todo_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerFactory(() => TodoViewModel(TodoRepositoryImpl()));
}
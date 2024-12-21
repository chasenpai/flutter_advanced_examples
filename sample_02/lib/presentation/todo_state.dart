import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_02/domain/todo.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    @Default(false) bool isLoading,
    @Default([]) List<Todo> todos,
  }) = _TodoState;
}
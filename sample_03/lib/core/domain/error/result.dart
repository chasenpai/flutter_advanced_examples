import 'package:freezed_annotation/freezed_annotation.dart';
import 'error.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<D, E extends Error> with _$Result<D, E>{
  const factory Result.success(D data) = Success;
  const factory Result.failed(E error) = Failure;
}
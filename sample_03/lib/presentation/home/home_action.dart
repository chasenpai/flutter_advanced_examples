import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_action.freezed.dart';

@freezed
sealed class HomeAction with _$HomeAction{
  const factory HomeAction.onSearchFieldTap() = OnSearchFieldTap;
  const factory HomeAction.onCategorySelected(String category) = OnCategorySelected;
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_03/domain/model/recipe.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default('All') String selectedCategory,
    @Default([]) List<String> categories,
    @Default([]) List<Recipe> dishes,
    @Default([]) List<Recipe> newRecipes,
    @Default('') String name,
  }) = _HomeState;
}
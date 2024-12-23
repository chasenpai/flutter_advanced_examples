import 'package:flutter/cupertino.dart';
import 'package:sample_03/domain/use_case/get_categories_use_case.dart';
import 'package:sample_03/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {

  final GetCategoriesUseCase _getCategoriesUseCase;

  HomeViewModel({
    required GetCategoriesUseCase getCategoriesUseCase
  }): _getCategoriesUseCase = getCategoriesUseCase {
    _loadCategories();
  }

  HomeState _state = const HomeState();

  HomeState get state => _state;

  void _loadCategories() async {
    _state = _state.copyWith(
      isLoading: true,
    );
    notifyListeners();
    final categories = await _getCategoriesUseCase.execute();
    _state = _state.copyWith(
      isLoading: false,
      categories: categories,
    );
    notifyListeners();
  }

  void onCategorySelected(String category) async {
    _state = _state.copyWith(
      selectedCategory: category,
    );
    notifyListeners();
  }

}
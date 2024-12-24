import 'package:flutter/cupertino.dart';
import 'package:sample_03/domain/use_case/get_categories_use_case.dart';
import 'package:sample_03/domain/use_case/get_dishes_by_category_use_case.dart';
import 'package:sample_03/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {

  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetDishesByCategoryUseCase _getDishesByCategoryUseCase;

  HomeViewModel({
    required GetCategoriesUseCase getCategoriesUseCase,
    required GetDishesByCategoryUseCase getDishesByCategoryUseCase
  }): _getCategoriesUseCase = getCategoriesUseCase,
      _getDishesByCategoryUseCase = getDishesByCategoryUseCase {
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
    await _fetchDishesByCategory('All');
  }

  void onCategorySelected(String category) async {
    _state = _state.copyWith(
      selectedCategory: category,
    );
    notifyListeners();
    await _fetchDishesByCategory(category);
  }

  Future<void> _fetchDishesByCategory(String category) async {
    _state = _state.copyWith(
      isLoading: true,
    );
    notifyListeners();
    final dishes = await _getDishesByCategoryUseCase.execute(category);
    _state = _state.copyWith(
      isLoading: false,
      dishes: dishes,
    );
    notifyListeners();
  }

}
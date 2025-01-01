import 'package:sample_03/domain/model/ingredient.dart';

abstract interface class IngredientRepository {

  Future<List<Ingredient>> getIngredients();

}
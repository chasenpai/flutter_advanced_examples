import 'package:sample_03/core/domain/error/error.dart';

enum NewRecipesError implements Error {
  noRecipe,
  invalidCategory,
  unknown;
}
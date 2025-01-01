import 'package:sample_03/core/domain/error/error.dart';

enum BookmarkError implements Error {
  noRecipe,
  saveFailed,
  unknown;

  @override
  String toString() => switch(this) {
    // TODO: Handle this case.
    BookmarkError.noRecipe => 'recipe not found',
    // TODO: Handle this case.
    BookmarkError.saveFailed => 'bookmark save failed',
    // TODO: Handle this case.
    BookmarkError.unknown => 'unknown error occurred',
  };

}
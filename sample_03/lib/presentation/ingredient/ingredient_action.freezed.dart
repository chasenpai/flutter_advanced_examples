// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IngredientAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onBookmarkTap,
    required TResult Function() onIngredientTap,
    required TResult Function() onProcedureTap,
    required TResult Function(Recipe recipe) onFollowTap,
    required TResult Function(int recipeId) loadRecipe,
    required TResult Function(String link) onShareTap,
    required TResult Function(Recipe recipe, int rate) onRateTap,
    required TResult Function(Recipe recipe) onUnsaveTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onBookmarkTap,
    TResult? Function()? onIngredientTap,
    TResult? Function()? onProcedureTap,
    TResult? Function(Recipe recipe)? onFollowTap,
    TResult? Function(int recipeId)? loadRecipe,
    TResult? Function(String link)? onShareTap,
    TResult? Function(Recipe recipe, int rate)? onRateTap,
    TResult? Function(Recipe recipe)? onUnsaveTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onBookmarkTap,
    TResult Function()? onIngredientTap,
    TResult Function()? onProcedureTap,
    TResult Function(Recipe recipe)? onFollowTap,
    TResult Function(int recipeId)? loadRecipe,
    TResult Function(String link)? onShareTap,
    TResult Function(Recipe recipe, int rate)? onRateTap,
    TResult Function(Recipe recipe)? onUnsaveTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
    required TResult Function(OnIngredientTap value) onIngredientTap,
    required TResult Function(OnProcedureTap value) onProcedureTap,
    required TResult Function(OnFollowTap value) onFollowTap,
    required TResult Function(LoadRecipe value) loadRecipe,
    required TResult Function(OnShareTap value) onShareTap,
    required TResult Function(OnRateTap value) onRateTap,
    required TResult Function(OnUnsaveTap value) onUnsaveTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
    TResult? Function(OnIngredientTap value)? onIngredientTap,
    TResult? Function(OnProcedureTap value)? onProcedureTap,
    TResult? Function(OnFollowTap value)? onFollowTap,
    TResult? Function(LoadRecipe value)? loadRecipe,
    TResult? Function(OnShareTap value)? onShareTap,
    TResult? Function(OnRateTap value)? onRateTap,
    TResult? Function(OnUnsaveTap value)? onUnsaveTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    TResult Function(OnIngredientTap value)? onIngredientTap,
    TResult Function(OnProcedureTap value)? onProcedureTap,
    TResult Function(OnFollowTap value)? onFollowTap,
    TResult Function(LoadRecipe value)? loadRecipe,
    TResult Function(OnShareTap value)? onShareTap,
    TResult Function(OnRateTap value)? onRateTap,
    TResult Function(OnUnsaveTap value)? onUnsaveTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientActionCopyWith<$Res> {
  factory $IngredientActionCopyWith(
          IngredientAction value, $Res Function(IngredientAction) then) =
      _$IngredientActionCopyWithImpl<$Res, IngredientAction>;
}

/// @nodoc
class _$IngredientActionCopyWithImpl<$Res, $Val extends IngredientAction>
    implements $IngredientActionCopyWith<$Res> {
  _$IngredientActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnBookmarkTapImplCopyWith<$Res> {
  factory _$$OnBookmarkTapImplCopyWith(
          _$OnBookmarkTapImpl value, $Res Function(_$OnBookmarkTapImpl) then) =
      __$$OnBookmarkTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipe recipe});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$OnBookmarkTapImplCopyWithImpl<$Res>
    extends _$IngredientActionCopyWithImpl<$Res, _$OnBookmarkTapImpl>
    implements _$$OnBookmarkTapImplCopyWith<$Res> {
  __$$OnBookmarkTapImplCopyWithImpl(
      _$OnBookmarkTapImpl _value, $Res Function(_$OnBookmarkTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$OnBookmarkTapImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$OnBookmarkTapImpl implements OnBookmarkTap {
  const _$OnBookmarkTapImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'IngredientAction.onBookmarkTap(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBookmarkTapImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBookmarkTapImplCopyWith<_$OnBookmarkTapImpl> get copyWith =>
      __$$OnBookmarkTapImplCopyWithImpl<_$OnBookmarkTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onBookmarkTap,
    required TResult Function() onIngredientTap,
    required TResult Function() onProcedureTap,
    required TResult Function(Recipe recipe) onFollowTap,
    required TResult Function(int recipeId) loadRecipe,
    required TResult Function(String link) onShareTap,
    required TResult Function(Recipe recipe, int rate) onRateTap,
    required TResult Function(Recipe recipe) onUnsaveTap,
  }) {
    return onBookmarkTap(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onBookmarkTap,
    TResult? Function()? onIngredientTap,
    TResult? Function()? onProcedureTap,
    TResult? Function(Recipe recipe)? onFollowTap,
    TResult? Function(int recipeId)? loadRecipe,
    TResult? Function(String link)? onShareTap,
    TResult? Function(Recipe recipe, int rate)? onRateTap,
    TResult? Function(Recipe recipe)? onUnsaveTap,
  }) {
    return onBookmarkTap?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onBookmarkTap,
    TResult Function()? onIngredientTap,
    TResult Function()? onProcedureTap,
    TResult Function(Recipe recipe)? onFollowTap,
    TResult Function(int recipeId)? loadRecipe,
    TResult Function(String link)? onShareTap,
    TResult Function(Recipe recipe, int rate)? onRateTap,
    TResult Function(Recipe recipe)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onBookmarkTap != null) {
      return onBookmarkTap(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
    required TResult Function(OnIngredientTap value) onIngredientTap,
    required TResult Function(OnProcedureTap value) onProcedureTap,
    required TResult Function(OnFollowTap value) onFollowTap,
    required TResult Function(LoadRecipe value) loadRecipe,
    required TResult Function(OnShareTap value) onShareTap,
    required TResult Function(OnRateTap value) onRateTap,
    required TResult Function(OnUnsaveTap value) onUnsaveTap,
  }) {
    return onBookmarkTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
    TResult? Function(OnIngredientTap value)? onIngredientTap,
    TResult? Function(OnProcedureTap value)? onProcedureTap,
    TResult? Function(OnFollowTap value)? onFollowTap,
    TResult? Function(LoadRecipe value)? loadRecipe,
    TResult? Function(OnShareTap value)? onShareTap,
    TResult? Function(OnRateTap value)? onRateTap,
    TResult? Function(OnUnsaveTap value)? onUnsaveTap,
  }) {
    return onBookmarkTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    TResult Function(OnIngredientTap value)? onIngredientTap,
    TResult Function(OnProcedureTap value)? onProcedureTap,
    TResult Function(OnFollowTap value)? onFollowTap,
    TResult Function(LoadRecipe value)? loadRecipe,
    TResult Function(OnShareTap value)? onShareTap,
    TResult Function(OnRateTap value)? onRateTap,
    TResult Function(OnUnsaveTap value)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onBookmarkTap != null) {
      return onBookmarkTap(this);
    }
    return orElse();
  }
}

abstract class OnBookmarkTap implements IngredientAction {
  const factory OnBookmarkTap(final Recipe recipe) = _$OnBookmarkTapImpl;

  Recipe get recipe;

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnBookmarkTapImplCopyWith<_$OnBookmarkTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnIngredientTapImplCopyWith<$Res> {
  factory _$$OnIngredientTapImplCopyWith(_$OnIngredientTapImpl value,
          $Res Function(_$OnIngredientTapImpl) then) =
      __$$OnIngredientTapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnIngredientTapImplCopyWithImpl<$Res>
    extends _$IngredientActionCopyWithImpl<$Res, _$OnIngredientTapImpl>
    implements _$$OnIngredientTapImplCopyWith<$Res> {
  __$$OnIngredientTapImplCopyWithImpl(
      _$OnIngredientTapImpl _value, $Res Function(_$OnIngredientTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnIngredientTapImpl implements OnIngredientTap {
  const _$OnIngredientTapImpl();

  @override
  String toString() {
    return 'IngredientAction.onIngredientTap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnIngredientTapImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onBookmarkTap,
    required TResult Function() onIngredientTap,
    required TResult Function() onProcedureTap,
    required TResult Function(Recipe recipe) onFollowTap,
    required TResult Function(int recipeId) loadRecipe,
    required TResult Function(String link) onShareTap,
    required TResult Function(Recipe recipe, int rate) onRateTap,
    required TResult Function(Recipe recipe) onUnsaveTap,
  }) {
    return onIngredientTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onBookmarkTap,
    TResult? Function()? onIngredientTap,
    TResult? Function()? onProcedureTap,
    TResult? Function(Recipe recipe)? onFollowTap,
    TResult? Function(int recipeId)? loadRecipe,
    TResult? Function(String link)? onShareTap,
    TResult? Function(Recipe recipe, int rate)? onRateTap,
    TResult? Function(Recipe recipe)? onUnsaveTap,
  }) {
    return onIngredientTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onBookmarkTap,
    TResult Function()? onIngredientTap,
    TResult Function()? onProcedureTap,
    TResult Function(Recipe recipe)? onFollowTap,
    TResult Function(int recipeId)? loadRecipe,
    TResult Function(String link)? onShareTap,
    TResult Function(Recipe recipe, int rate)? onRateTap,
    TResult Function(Recipe recipe)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onIngredientTap != null) {
      return onIngredientTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
    required TResult Function(OnIngredientTap value) onIngredientTap,
    required TResult Function(OnProcedureTap value) onProcedureTap,
    required TResult Function(OnFollowTap value) onFollowTap,
    required TResult Function(LoadRecipe value) loadRecipe,
    required TResult Function(OnShareTap value) onShareTap,
    required TResult Function(OnRateTap value) onRateTap,
    required TResult Function(OnUnsaveTap value) onUnsaveTap,
  }) {
    return onIngredientTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
    TResult? Function(OnIngredientTap value)? onIngredientTap,
    TResult? Function(OnProcedureTap value)? onProcedureTap,
    TResult? Function(OnFollowTap value)? onFollowTap,
    TResult? Function(LoadRecipe value)? loadRecipe,
    TResult? Function(OnShareTap value)? onShareTap,
    TResult? Function(OnRateTap value)? onRateTap,
    TResult? Function(OnUnsaveTap value)? onUnsaveTap,
  }) {
    return onIngredientTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    TResult Function(OnIngredientTap value)? onIngredientTap,
    TResult Function(OnProcedureTap value)? onProcedureTap,
    TResult Function(OnFollowTap value)? onFollowTap,
    TResult Function(LoadRecipe value)? loadRecipe,
    TResult Function(OnShareTap value)? onShareTap,
    TResult Function(OnRateTap value)? onRateTap,
    TResult Function(OnUnsaveTap value)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onIngredientTap != null) {
      return onIngredientTap(this);
    }
    return orElse();
  }
}

abstract class OnIngredientTap implements IngredientAction {
  const factory OnIngredientTap() = _$OnIngredientTapImpl;
}

/// @nodoc
abstract class _$$OnProcedureTapImplCopyWith<$Res> {
  factory _$$OnProcedureTapImplCopyWith(_$OnProcedureTapImpl value,
          $Res Function(_$OnProcedureTapImpl) then) =
      __$$OnProcedureTapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnProcedureTapImplCopyWithImpl<$Res>
    extends _$IngredientActionCopyWithImpl<$Res, _$OnProcedureTapImpl>
    implements _$$OnProcedureTapImplCopyWith<$Res> {
  __$$OnProcedureTapImplCopyWithImpl(
      _$OnProcedureTapImpl _value, $Res Function(_$OnProcedureTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnProcedureTapImpl implements OnProcedureTap {
  const _$OnProcedureTapImpl();

  @override
  String toString() {
    return 'IngredientAction.onProcedureTap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnProcedureTapImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onBookmarkTap,
    required TResult Function() onIngredientTap,
    required TResult Function() onProcedureTap,
    required TResult Function(Recipe recipe) onFollowTap,
    required TResult Function(int recipeId) loadRecipe,
    required TResult Function(String link) onShareTap,
    required TResult Function(Recipe recipe, int rate) onRateTap,
    required TResult Function(Recipe recipe) onUnsaveTap,
  }) {
    return onProcedureTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onBookmarkTap,
    TResult? Function()? onIngredientTap,
    TResult? Function()? onProcedureTap,
    TResult? Function(Recipe recipe)? onFollowTap,
    TResult? Function(int recipeId)? loadRecipe,
    TResult? Function(String link)? onShareTap,
    TResult? Function(Recipe recipe, int rate)? onRateTap,
    TResult? Function(Recipe recipe)? onUnsaveTap,
  }) {
    return onProcedureTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onBookmarkTap,
    TResult Function()? onIngredientTap,
    TResult Function()? onProcedureTap,
    TResult Function(Recipe recipe)? onFollowTap,
    TResult Function(int recipeId)? loadRecipe,
    TResult Function(String link)? onShareTap,
    TResult Function(Recipe recipe, int rate)? onRateTap,
    TResult Function(Recipe recipe)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onProcedureTap != null) {
      return onProcedureTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
    required TResult Function(OnIngredientTap value) onIngredientTap,
    required TResult Function(OnProcedureTap value) onProcedureTap,
    required TResult Function(OnFollowTap value) onFollowTap,
    required TResult Function(LoadRecipe value) loadRecipe,
    required TResult Function(OnShareTap value) onShareTap,
    required TResult Function(OnRateTap value) onRateTap,
    required TResult Function(OnUnsaveTap value) onUnsaveTap,
  }) {
    return onProcedureTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
    TResult? Function(OnIngredientTap value)? onIngredientTap,
    TResult? Function(OnProcedureTap value)? onProcedureTap,
    TResult? Function(OnFollowTap value)? onFollowTap,
    TResult? Function(LoadRecipe value)? loadRecipe,
    TResult? Function(OnShareTap value)? onShareTap,
    TResult? Function(OnRateTap value)? onRateTap,
    TResult? Function(OnUnsaveTap value)? onUnsaveTap,
  }) {
    return onProcedureTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    TResult Function(OnIngredientTap value)? onIngredientTap,
    TResult Function(OnProcedureTap value)? onProcedureTap,
    TResult Function(OnFollowTap value)? onFollowTap,
    TResult Function(LoadRecipe value)? loadRecipe,
    TResult Function(OnShareTap value)? onShareTap,
    TResult Function(OnRateTap value)? onRateTap,
    TResult Function(OnUnsaveTap value)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onProcedureTap != null) {
      return onProcedureTap(this);
    }
    return orElse();
  }
}

abstract class OnProcedureTap implements IngredientAction {
  const factory OnProcedureTap() = _$OnProcedureTapImpl;
}

/// @nodoc
abstract class _$$OnFollowTapImplCopyWith<$Res> {
  factory _$$OnFollowTapImplCopyWith(
          _$OnFollowTapImpl value, $Res Function(_$OnFollowTapImpl) then) =
      __$$OnFollowTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipe recipe});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$OnFollowTapImplCopyWithImpl<$Res>
    extends _$IngredientActionCopyWithImpl<$Res, _$OnFollowTapImpl>
    implements _$$OnFollowTapImplCopyWith<$Res> {
  __$$OnFollowTapImplCopyWithImpl(
      _$OnFollowTapImpl _value, $Res Function(_$OnFollowTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$OnFollowTapImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$OnFollowTapImpl implements OnFollowTap {
  const _$OnFollowTapImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'IngredientAction.onFollowTap(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFollowTapImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnFollowTapImplCopyWith<_$OnFollowTapImpl> get copyWith =>
      __$$OnFollowTapImplCopyWithImpl<_$OnFollowTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onBookmarkTap,
    required TResult Function() onIngredientTap,
    required TResult Function() onProcedureTap,
    required TResult Function(Recipe recipe) onFollowTap,
    required TResult Function(int recipeId) loadRecipe,
    required TResult Function(String link) onShareTap,
    required TResult Function(Recipe recipe, int rate) onRateTap,
    required TResult Function(Recipe recipe) onUnsaveTap,
  }) {
    return onFollowTap(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onBookmarkTap,
    TResult? Function()? onIngredientTap,
    TResult? Function()? onProcedureTap,
    TResult? Function(Recipe recipe)? onFollowTap,
    TResult? Function(int recipeId)? loadRecipe,
    TResult? Function(String link)? onShareTap,
    TResult? Function(Recipe recipe, int rate)? onRateTap,
    TResult? Function(Recipe recipe)? onUnsaveTap,
  }) {
    return onFollowTap?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onBookmarkTap,
    TResult Function()? onIngredientTap,
    TResult Function()? onProcedureTap,
    TResult Function(Recipe recipe)? onFollowTap,
    TResult Function(int recipeId)? loadRecipe,
    TResult Function(String link)? onShareTap,
    TResult Function(Recipe recipe, int rate)? onRateTap,
    TResult Function(Recipe recipe)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onFollowTap != null) {
      return onFollowTap(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
    required TResult Function(OnIngredientTap value) onIngredientTap,
    required TResult Function(OnProcedureTap value) onProcedureTap,
    required TResult Function(OnFollowTap value) onFollowTap,
    required TResult Function(LoadRecipe value) loadRecipe,
    required TResult Function(OnShareTap value) onShareTap,
    required TResult Function(OnRateTap value) onRateTap,
    required TResult Function(OnUnsaveTap value) onUnsaveTap,
  }) {
    return onFollowTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
    TResult? Function(OnIngredientTap value)? onIngredientTap,
    TResult? Function(OnProcedureTap value)? onProcedureTap,
    TResult? Function(OnFollowTap value)? onFollowTap,
    TResult? Function(LoadRecipe value)? loadRecipe,
    TResult? Function(OnShareTap value)? onShareTap,
    TResult? Function(OnRateTap value)? onRateTap,
    TResult? Function(OnUnsaveTap value)? onUnsaveTap,
  }) {
    return onFollowTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    TResult Function(OnIngredientTap value)? onIngredientTap,
    TResult Function(OnProcedureTap value)? onProcedureTap,
    TResult Function(OnFollowTap value)? onFollowTap,
    TResult Function(LoadRecipe value)? loadRecipe,
    TResult Function(OnShareTap value)? onShareTap,
    TResult Function(OnRateTap value)? onRateTap,
    TResult Function(OnUnsaveTap value)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onFollowTap != null) {
      return onFollowTap(this);
    }
    return orElse();
  }
}

abstract class OnFollowTap implements IngredientAction {
  const factory OnFollowTap(final Recipe recipe) = _$OnFollowTapImpl;

  Recipe get recipe;

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnFollowTapImplCopyWith<_$OnFollowTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadRecipeImplCopyWith<$Res> {
  factory _$$LoadRecipeImplCopyWith(
          _$LoadRecipeImpl value, $Res Function(_$LoadRecipeImpl) then) =
      __$$LoadRecipeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int recipeId});
}

/// @nodoc
class __$$LoadRecipeImplCopyWithImpl<$Res>
    extends _$IngredientActionCopyWithImpl<$Res, _$LoadRecipeImpl>
    implements _$$LoadRecipeImplCopyWith<$Res> {
  __$$LoadRecipeImplCopyWithImpl(
      _$LoadRecipeImpl _value, $Res Function(_$LoadRecipeImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
  }) {
    return _then(_$LoadRecipeImpl(
      null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadRecipeImpl implements LoadRecipe {
  const _$LoadRecipeImpl(this.recipeId);

  @override
  final int recipeId;

  @override
  String toString() {
    return 'IngredientAction.loadRecipe(recipeId: $recipeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRecipeImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadRecipeImplCopyWith<_$LoadRecipeImpl> get copyWith =>
      __$$LoadRecipeImplCopyWithImpl<_$LoadRecipeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onBookmarkTap,
    required TResult Function() onIngredientTap,
    required TResult Function() onProcedureTap,
    required TResult Function(Recipe recipe) onFollowTap,
    required TResult Function(int recipeId) loadRecipe,
    required TResult Function(String link) onShareTap,
    required TResult Function(Recipe recipe, int rate) onRateTap,
    required TResult Function(Recipe recipe) onUnsaveTap,
  }) {
    return loadRecipe(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onBookmarkTap,
    TResult? Function()? onIngredientTap,
    TResult? Function()? onProcedureTap,
    TResult? Function(Recipe recipe)? onFollowTap,
    TResult? Function(int recipeId)? loadRecipe,
    TResult? Function(String link)? onShareTap,
    TResult? Function(Recipe recipe, int rate)? onRateTap,
    TResult? Function(Recipe recipe)? onUnsaveTap,
  }) {
    return loadRecipe?.call(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onBookmarkTap,
    TResult Function()? onIngredientTap,
    TResult Function()? onProcedureTap,
    TResult Function(Recipe recipe)? onFollowTap,
    TResult Function(int recipeId)? loadRecipe,
    TResult Function(String link)? onShareTap,
    TResult Function(Recipe recipe, int rate)? onRateTap,
    TResult Function(Recipe recipe)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (loadRecipe != null) {
      return loadRecipe(recipeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
    required TResult Function(OnIngredientTap value) onIngredientTap,
    required TResult Function(OnProcedureTap value) onProcedureTap,
    required TResult Function(OnFollowTap value) onFollowTap,
    required TResult Function(LoadRecipe value) loadRecipe,
    required TResult Function(OnShareTap value) onShareTap,
    required TResult Function(OnRateTap value) onRateTap,
    required TResult Function(OnUnsaveTap value) onUnsaveTap,
  }) {
    return loadRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
    TResult? Function(OnIngredientTap value)? onIngredientTap,
    TResult? Function(OnProcedureTap value)? onProcedureTap,
    TResult? Function(OnFollowTap value)? onFollowTap,
    TResult? Function(LoadRecipe value)? loadRecipe,
    TResult? Function(OnShareTap value)? onShareTap,
    TResult? Function(OnRateTap value)? onRateTap,
    TResult? Function(OnUnsaveTap value)? onUnsaveTap,
  }) {
    return loadRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    TResult Function(OnIngredientTap value)? onIngredientTap,
    TResult Function(OnProcedureTap value)? onProcedureTap,
    TResult Function(OnFollowTap value)? onFollowTap,
    TResult Function(LoadRecipe value)? loadRecipe,
    TResult Function(OnShareTap value)? onShareTap,
    TResult Function(OnRateTap value)? onRateTap,
    TResult Function(OnUnsaveTap value)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (loadRecipe != null) {
      return loadRecipe(this);
    }
    return orElse();
  }
}

abstract class LoadRecipe implements IngredientAction {
  const factory LoadRecipe(final int recipeId) = _$LoadRecipeImpl;

  int get recipeId;

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadRecipeImplCopyWith<_$LoadRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnShareTapImplCopyWith<$Res> {
  factory _$$OnShareTapImplCopyWith(
          _$OnShareTapImpl value, $Res Function(_$OnShareTapImpl) then) =
      __$$OnShareTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$OnShareTapImplCopyWithImpl<$Res>
    extends _$IngredientActionCopyWithImpl<$Res, _$OnShareTapImpl>
    implements _$$OnShareTapImplCopyWith<$Res> {
  __$$OnShareTapImplCopyWithImpl(
      _$OnShareTapImpl _value, $Res Function(_$OnShareTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$OnShareTapImpl(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnShareTapImpl implements OnShareTap {
  const _$OnShareTapImpl(this.link);

  @override
  final String link;

  @override
  String toString() {
    return 'IngredientAction.onShareTap(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnShareTapImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnShareTapImplCopyWith<_$OnShareTapImpl> get copyWith =>
      __$$OnShareTapImplCopyWithImpl<_$OnShareTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onBookmarkTap,
    required TResult Function() onIngredientTap,
    required TResult Function() onProcedureTap,
    required TResult Function(Recipe recipe) onFollowTap,
    required TResult Function(int recipeId) loadRecipe,
    required TResult Function(String link) onShareTap,
    required TResult Function(Recipe recipe, int rate) onRateTap,
    required TResult Function(Recipe recipe) onUnsaveTap,
  }) {
    return onShareTap(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onBookmarkTap,
    TResult? Function()? onIngredientTap,
    TResult? Function()? onProcedureTap,
    TResult? Function(Recipe recipe)? onFollowTap,
    TResult? Function(int recipeId)? loadRecipe,
    TResult? Function(String link)? onShareTap,
    TResult? Function(Recipe recipe, int rate)? onRateTap,
    TResult? Function(Recipe recipe)? onUnsaveTap,
  }) {
    return onShareTap?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onBookmarkTap,
    TResult Function()? onIngredientTap,
    TResult Function()? onProcedureTap,
    TResult Function(Recipe recipe)? onFollowTap,
    TResult Function(int recipeId)? loadRecipe,
    TResult Function(String link)? onShareTap,
    TResult Function(Recipe recipe, int rate)? onRateTap,
    TResult Function(Recipe recipe)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onShareTap != null) {
      return onShareTap(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
    required TResult Function(OnIngredientTap value) onIngredientTap,
    required TResult Function(OnProcedureTap value) onProcedureTap,
    required TResult Function(OnFollowTap value) onFollowTap,
    required TResult Function(LoadRecipe value) loadRecipe,
    required TResult Function(OnShareTap value) onShareTap,
    required TResult Function(OnRateTap value) onRateTap,
    required TResult Function(OnUnsaveTap value) onUnsaveTap,
  }) {
    return onShareTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
    TResult? Function(OnIngredientTap value)? onIngredientTap,
    TResult? Function(OnProcedureTap value)? onProcedureTap,
    TResult? Function(OnFollowTap value)? onFollowTap,
    TResult? Function(LoadRecipe value)? loadRecipe,
    TResult? Function(OnShareTap value)? onShareTap,
    TResult? Function(OnRateTap value)? onRateTap,
    TResult? Function(OnUnsaveTap value)? onUnsaveTap,
  }) {
    return onShareTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    TResult Function(OnIngredientTap value)? onIngredientTap,
    TResult Function(OnProcedureTap value)? onProcedureTap,
    TResult Function(OnFollowTap value)? onFollowTap,
    TResult Function(LoadRecipe value)? loadRecipe,
    TResult Function(OnShareTap value)? onShareTap,
    TResult Function(OnRateTap value)? onRateTap,
    TResult Function(OnUnsaveTap value)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onShareTap != null) {
      return onShareTap(this);
    }
    return orElse();
  }
}

abstract class OnShareTap implements IngredientAction {
  const factory OnShareTap(final String link) = _$OnShareTapImpl;

  String get link;

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnShareTapImplCopyWith<_$OnShareTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRateTapImplCopyWith<$Res> {
  factory _$$OnRateTapImplCopyWith(
          _$OnRateTapImpl value, $Res Function(_$OnRateTapImpl) then) =
      __$$OnRateTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipe recipe, int rate});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$OnRateTapImplCopyWithImpl<$Res>
    extends _$IngredientActionCopyWithImpl<$Res, _$OnRateTapImpl>
    implements _$$OnRateTapImplCopyWith<$Res> {
  __$$OnRateTapImplCopyWithImpl(
      _$OnRateTapImpl _value, $Res Function(_$OnRateTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? rate = null,
  }) {
    return _then(_$OnRateTapImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$OnRateTapImpl implements OnRateTap {
  const _$OnRateTapImpl(this.recipe, this.rate);

  @override
  final Recipe recipe;
  @override
  final int rate;

  @override
  String toString() {
    return 'IngredientAction.onRateTap(recipe: $recipe, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRateTapImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe, rate);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRateTapImplCopyWith<_$OnRateTapImpl> get copyWith =>
      __$$OnRateTapImplCopyWithImpl<_$OnRateTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onBookmarkTap,
    required TResult Function() onIngredientTap,
    required TResult Function() onProcedureTap,
    required TResult Function(Recipe recipe) onFollowTap,
    required TResult Function(int recipeId) loadRecipe,
    required TResult Function(String link) onShareTap,
    required TResult Function(Recipe recipe, int rate) onRateTap,
    required TResult Function(Recipe recipe) onUnsaveTap,
  }) {
    return onRateTap(recipe, rate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onBookmarkTap,
    TResult? Function()? onIngredientTap,
    TResult? Function()? onProcedureTap,
    TResult? Function(Recipe recipe)? onFollowTap,
    TResult? Function(int recipeId)? loadRecipe,
    TResult? Function(String link)? onShareTap,
    TResult? Function(Recipe recipe, int rate)? onRateTap,
    TResult? Function(Recipe recipe)? onUnsaveTap,
  }) {
    return onRateTap?.call(recipe, rate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onBookmarkTap,
    TResult Function()? onIngredientTap,
    TResult Function()? onProcedureTap,
    TResult Function(Recipe recipe)? onFollowTap,
    TResult Function(int recipeId)? loadRecipe,
    TResult Function(String link)? onShareTap,
    TResult Function(Recipe recipe, int rate)? onRateTap,
    TResult Function(Recipe recipe)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onRateTap != null) {
      return onRateTap(recipe, rate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
    required TResult Function(OnIngredientTap value) onIngredientTap,
    required TResult Function(OnProcedureTap value) onProcedureTap,
    required TResult Function(OnFollowTap value) onFollowTap,
    required TResult Function(LoadRecipe value) loadRecipe,
    required TResult Function(OnShareTap value) onShareTap,
    required TResult Function(OnRateTap value) onRateTap,
    required TResult Function(OnUnsaveTap value) onUnsaveTap,
  }) {
    return onRateTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
    TResult? Function(OnIngredientTap value)? onIngredientTap,
    TResult? Function(OnProcedureTap value)? onProcedureTap,
    TResult? Function(OnFollowTap value)? onFollowTap,
    TResult? Function(LoadRecipe value)? loadRecipe,
    TResult? Function(OnShareTap value)? onShareTap,
    TResult? Function(OnRateTap value)? onRateTap,
    TResult? Function(OnUnsaveTap value)? onUnsaveTap,
  }) {
    return onRateTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    TResult Function(OnIngredientTap value)? onIngredientTap,
    TResult Function(OnProcedureTap value)? onProcedureTap,
    TResult Function(OnFollowTap value)? onFollowTap,
    TResult Function(LoadRecipe value)? loadRecipe,
    TResult Function(OnShareTap value)? onShareTap,
    TResult Function(OnRateTap value)? onRateTap,
    TResult Function(OnUnsaveTap value)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onRateTap != null) {
      return onRateTap(this);
    }
    return orElse();
  }
}

abstract class OnRateTap implements IngredientAction {
  const factory OnRateTap(final Recipe recipe, final int rate) =
      _$OnRateTapImpl;

  Recipe get recipe;
  int get rate;

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnRateTapImplCopyWith<_$OnRateTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUnsaveTapImplCopyWith<$Res> {
  factory _$$OnUnsaveTapImplCopyWith(
          _$OnUnsaveTapImpl value, $Res Function(_$OnUnsaveTapImpl) then) =
      __$$OnUnsaveTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipe recipe});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$OnUnsaveTapImplCopyWithImpl<$Res>
    extends _$IngredientActionCopyWithImpl<$Res, _$OnUnsaveTapImpl>
    implements _$$OnUnsaveTapImplCopyWith<$Res> {
  __$$OnUnsaveTapImplCopyWithImpl(
      _$OnUnsaveTapImpl _value, $Res Function(_$OnUnsaveTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$OnUnsaveTapImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$OnUnsaveTapImpl implements OnUnsaveTap {
  const _$OnUnsaveTapImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'IngredientAction.onUnsaveTap(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUnsaveTapImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUnsaveTapImplCopyWith<_$OnUnsaveTapImpl> get copyWith =>
      __$$OnUnsaveTapImplCopyWithImpl<_$OnUnsaveTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onBookmarkTap,
    required TResult Function() onIngredientTap,
    required TResult Function() onProcedureTap,
    required TResult Function(Recipe recipe) onFollowTap,
    required TResult Function(int recipeId) loadRecipe,
    required TResult Function(String link) onShareTap,
    required TResult Function(Recipe recipe, int rate) onRateTap,
    required TResult Function(Recipe recipe) onUnsaveTap,
  }) {
    return onUnsaveTap(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onBookmarkTap,
    TResult? Function()? onIngredientTap,
    TResult? Function()? onProcedureTap,
    TResult? Function(Recipe recipe)? onFollowTap,
    TResult? Function(int recipeId)? loadRecipe,
    TResult? Function(String link)? onShareTap,
    TResult? Function(Recipe recipe, int rate)? onRateTap,
    TResult? Function(Recipe recipe)? onUnsaveTap,
  }) {
    return onUnsaveTap?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onBookmarkTap,
    TResult Function()? onIngredientTap,
    TResult Function()? onProcedureTap,
    TResult Function(Recipe recipe)? onFollowTap,
    TResult Function(int recipeId)? loadRecipe,
    TResult Function(String link)? onShareTap,
    TResult Function(Recipe recipe, int rate)? onRateTap,
    TResult Function(Recipe recipe)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onUnsaveTap != null) {
      return onUnsaveTap(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
    required TResult Function(OnIngredientTap value) onIngredientTap,
    required TResult Function(OnProcedureTap value) onProcedureTap,
    required TResult Function(OnFollowTap value) onFollowTap,
    required TResult Function(LoadRecipe value) loadRecipe,
    required TResult Function(OnShareTap value) onShareTap,
    required TResult Function(OnRateTap value) onRateTap,
    required TResult Function(OnUnsaveTap value) onUnsaveTap,
  }) {
    return onUnsaveTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
    TResult? Function(OnIngredientTap value)? onIngredientTap,
    TResult? Function(OnProcedureTap value)? onProcedureTap,
    TResult? Function(OnFollowTap value)? onFollowTap,
    TResult? Function(LoadRecipe value)? loadRecipe,
    TResult? Function(OnShareTap value)? onShareTap,
    TResult? Function(OnRateTap value)? onRateTap,
    TResult? Function(OnUnsaveTap value)? onUnsaveTap,
  }) {
    return onUnsaveTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    TResult Function(OnIngredientTap value)? onIngredientTap,
    TResult Function(OnProcedureTap value)? onProcedureTap,
    TResult Function(OnFollowTap value)? onFollowTap,
    TResult Function(LoadRecipe value)? loadRecipe,
    TResult Function(OnShareTap value)? onShareTap,
    TResult Function(OnRateTap value)? onRateTap,
    TResult Function(OnUnsaveTap value)? onUnsaveTap,
    required TResult orElse(),
  }) {
    if (onUnsaveTap != null) {
      return onUnsaveTap(this);
    }
    return orElse();
  }
}

abstract class OnUnsaveTap implements IngredientAction {
  const factory OnUnsaveTap(final Recipe recipe) = _$OnUnsaveTapImpl;

  Recipe get recipe;

  /// Create a copy of IngredientAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnUnsaveTapImplCopyWith<_$OnUnsaveTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

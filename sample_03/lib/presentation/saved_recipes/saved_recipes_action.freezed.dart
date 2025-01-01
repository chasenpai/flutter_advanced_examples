// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_recipes_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SavedRecipesAction {
  Recipe get recipe => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onTap,
    required TResult Function(Recipe recipe) onBookmarkTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onTap,
    TResult? Function(Recipe recipe)? onBookmarkTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onTap,
    TResult Function(Recipe recipe)? onBookmarkTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTap value) onTap,
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTap value)? onTap,
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTap value)? onTap,
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedRecipesActionCopyWith<SavedRecipesAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedRecipesActionCopyWith<$Res> {
  factory $SavedRecipesActionCopyWith(
          SavedRecipesAction value, $Res Function(SavedRecipesAction) then) =
      _$SavedRecipesActionCopyWithImpl<$Res, SavedRecipesAction>;
  @useResult
  $Res call({Recipe recipe});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class _$SavedRecipesActionCopyWithImpl<$Res, $Val extends SavedRecipesAction>
    implements $SavedRecipesActionCopyWith<$Res> {
  _$SavedRecipesActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ) as $Val);
  }

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnTapImplCopyWith<$Res>
    implements $SavedRecipesActionCopyWith<$Res> {
  factory _$$OnTapImplCopyWith(
          _$OnTapImpl value, $Res Function(_$OnTapImpl) then) =
      __$$OnTapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe recipe});

  @override
  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$OnTapImplCopyWithImpl<$Res>
    extends _$SavedRecipesActionCopyWithImpl<$Res, _$OnTapImpl>
    implements _$$OnTapImplCopyWith<$Res> {
  __$$OnTapImplCopyWithImpl(
      _$OnTapImpl _value, $Res Function(_$OnTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$OnTapImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }
}

/// @nodoc

class _$OnTapImpl implements OnTap {
  const _$OnTapImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'SavedRecipesAction.onTap(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTapImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTapImplCopyWith<_$OnTapImpl> get copyWith =>
      __$$OnTapImplCopyWithImpl<_$OnTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onTap,
    required TResult Function(Recipe recipe) onBookmarkTap,
  }) {
    return onTap(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onTap,
    TResult? Function(Recipe recipe)? onBookmarkTap,
  }) {
    return onTap?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onTap,
    TResult Function(Recipe recipe)? onBookmarkTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTap value) onTap,
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
  }) {
    return onTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTap value)? onTap,
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
  }) {
    return onTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTap value)? onTap,
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(this);
    }
    return orElse();
  }
}

abstract class OnTap implements SavedRecipesAction {
  const factory OnTap(final Recipe recipe) = _$OnTapImpl;

  @override
  Recipe get recipe;

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnTapImplCopyWith<_$OnTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnBookmarkTapImplCopyWith<$Res>
    implements $SavedRecipesActionCopyWith<$Res> {
  factory _$$OnBookmarkTapImplCopyWith(
          _$OnBookmarkTapImpl value, $Res Function(_$OnBookmarkTapImpl) then) =
      __$$OnBookmarkTapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe recipe});

  @override
  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$OnBookmarkTapImplCopyWithImpl<$Res>
    extends _$SavedRecipesActionCopyWithImpl<$Res, _$OnBookmarkTapImpl>
    implements _$$OnBookmarkTapImplCopyWith<$Res> {
  __$$OnBookmarkTapImplCopyWithImpl(
      _$OnBookmarkTapImpl _value, $Res Function(_$OnBookmarkTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedRecipesAction
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
}

/// @nodoc

class _$OnBookmarkTapImpl implements OnBookmarkTap {
  const _$OnBookmarkTapImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'SavedRecipesAction.onBookmarkTap(recipe: $recipe)';
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

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBookmarkTapImplCopyWith<_$OnBookmarkTapImpl> get copyWith =>
      __$$OnBookmarkTapImplCopyWithImpl<_$OnBookmarkTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) onTap,
    required TResult Function(Recipe recipe) onBookmarkTap,
  }) {
    return onBookmarkTap(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? onTap,
    TResult? Function(Recipe recipe)? onBookmarkTap,
  }) {
    return onBookmarkTap?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? onTap,
    TResult Function(Recipe recipe)? onBookmarkTap,
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
    required TResult Function(OnTap value) onTap,
    required TResult Function(OnBookmarkTap value) onBookmarkTap,
  }) {
    return onBookmarkTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTap value)? onTap,
    TResult? Function(OnBookmarkTap value)? onBookmarkTap,
  }) {
    return onBookmarkTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTap value)? onTap,
    TResult Function(OnBookmarkTap value)? onBookmarkTap,
    required TResult orElse(),
  }) {
    if (onBookmarkTap != null) {
      return onBookmarkTap(this);
    }
    return orElse();
  }
}

abstract class OnBookmarkTap implements SavedRecipesAction {
  const factory OnBookmarkTap(final Recipe recipe) = _$OnBookmarkTapImpl;

  @override
  Recipe get recipe;

  /// Create a copy of SavedRecipesAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnBookmarkTapImplCopyWith<_$OnBookmarkTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

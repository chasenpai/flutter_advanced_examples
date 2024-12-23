// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_recipes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchRecipesState {
  List<Recipe> get recipes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get recipesCount => throw _privateConstructorUsedError;
  FilterState get filterState => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  /// Create a copy of SearchRecipesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchRecipesStateCopyWith<SearchRecipesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipesStateCopyWith<$Res> {
  factory $SearchRecipesStateCopyWith(
          SearchRecipesState value, $Res Function(SearchRecipesState) then) =
      _$SearchRecipesStateCopyWithImpl<$Res, SearchRecipesState>;
  @useResult
  $Res call(
      {List<Recipe> recipes,
      bool isLoading,
      String title,
      String recipesCount,
      FilterState filterState,
      String query});

  $FilterStateCopyWith<$Res> get filterState;
}

/// @nodoc
class _$SearchRecipesStateCopyWithImpl<$Res, $Val extends SearchRecipesState>
    implements $SearchRecipesStateCopyWith<$Res> {
  _$SearchRecipesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchRecipesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isLoading = null,
    Object? title = null,
    Object? recipesCount = null,
    Object? filterState = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recipesCount: null == recipesCount
          ? _value.recipesCount
          : recipesCount // ignore: cast_nullable_to_non_nullable
              as String,
      filterState: null == filterState
          ? _value.filterState
          : filterState // ignore: cast_nullable_to_non_nullable
              as FilterState,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SearchRecipesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterStateCopyWith<$Res> get filterState {
    return $FilterStateCopyWith<$Res>(_value.filterState, (value) {
      return _then(_value.copyWith(filterState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchRecipesStateImplCopyWith<$Res>
    implements $SearchRecipesStateCopyWith<$Res> {
  factory _$$SearchRecipesStateImplCopyWith(_$SearchRecipesStateImpl value,
          $Res Function(_$SearchRecipesStateImpl) then) =
      __$$SearchRecipesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Recipe> recipes,
      bool isLoading,
      String title,
      String recipesCount,
      FilterState filterState,
      String query});

  @override
  $FilterStateCopyWith<$Res> get filterState;
}

/// @nodoc
class __$$SearchRecipesStateImplCopyWithImpl<$Res>
    extends _$SearchRecipesStateCopyWithImpl<$Res, _$SearchRecipesStateImpl>
    implements _$$SearchRecipesStateImplCopyWith<$Res> {
  __$$SearchRecipesStateImplCopyWithImpl(_$SearchRecipesStateImpl _value,
      $Res Function(_$SearchRecipesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchRecipesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isLoading = null,
    Object? title = null,
    Object? recipesCount = null,
    Object? filterState = null,
    Object? query = null,
  }) {
    return _then(_$SearchRecipesStateImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recipesCount: null == recipesCount
          ? _value.recipesCount
          : recipesCount // ignore: cast_nullable_to_non_nullable
              as String,
      filterState: null == filterState
          ? _value.filterState
          : filterState // ignore: cast_nullable_to_non_nullable
              as FilterState,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchRecipesStateImpl implements _SearchRecipesState {
  const _$SearchRecipesStateImpl(
      {final List<Recipe> recipes = const [],
      this.isLoading = false,
      this.title = 'Recent Search',
      this.recipesCount = '',
      this.filterState =
          const FilterState(time: 'All', rate: 1, category: 'All'),
      this.query = ''})
      : _recipes = recipes;

  final List<Recipe> _recipes;
  @override
  @JsonKey()
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String recipesCount;
  @override
  @JsonKey()
  final FilterState filterState;
  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'SearchRecipesState(recipes: $recipes, isLoading: $isLoading, title: $title, recipesCount: $recipesCount, filterState: $filterState, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRecipesStateImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recipesCount, recipesCount) ||
                other.recipesCount == recipesCount) &&
            (identical(other.filterState, filterState) ||
                other.filterState == filterState) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      isLoading,
      title,
      recipesCount,
      filterState,
      query);

  /// Create a copy of SearchRecipesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRecipesStateImplCopyWith<_$SearchRecipesStateImpl> get copyWith =>
      __$$SearchRecipesStateImplCopyWithImpl<_$SearchRecipesStateImpl>(
          this, _$identity);
}

abstract class _SearchRecipesState implements SearchRecipesState {
  const factory _SearchRecipesState(
      {final List<Recipe> recipes,
      final bool isLoading,
      final String title,
      final String recipesCount,
      final FilterState filterState,
      final String query}) = _$SearchRecipesStateImpl;

  @override
  List<Recipe> get recipes;
  @override
  bool get isLoading;
  @override
  String get title;
  @override
  String get recipesCount;
  @override
  FilterState get filterState;
  @override
  String get query;

  /// Create a copy of SearchRecipesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchRecipesStateImplCopyWith<_$SearchRecipesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

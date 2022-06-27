// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'table_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TableState<T> {
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get apiHasMoreData => throw _privateConstructorUsedError;
  List<T> get elements => throw _privateConstructorUsedError;
  Filters get filters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableStateCopyWith<T, TableState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableStateCopyWith<T, $Res> {
  factory $TableStateCopyWith(
          TableState<T> value, $Res Function(TableState<T>) then) =
      _$TableStateCopyWithImpl<T, $Res>;
  $Res call(
      {bool loading,
      String error,
      bool apiHasMoreData,
      List<T> elements,
      Filters filters});

  $FiltersCopyWith<$Res> get filters;
}

/// @nodoc
class _$TableStateCopyWithImpl<T, $Res>
    implements $TableStateCopyWith<T, $Res> {
  _$TableStateCopyWithImpl(this._value, this._then);

  final TableState<T> _value;
  // ignore: unused_field
  final $Res Function(TableState<T>) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? apiHasMoreData = freezed,
    Object? elements = freezed,
    Object? filters = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      apiHasMoreData: apiHasMoreData == freezed
          ? _value.apiHasMoreData
          : apiHasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<T>,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Filters,
    ));
  }

  @override
  $FiltersCopyWith<$Res> get filters {
    return $FiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc
abstract class _$$_TableStateCopyWith<T, $Res>
    implements $TableStateCopyWith<T, $Res> {
  factory _$$_TableStateCopyWith(
          _$_TableState<T> value, $Res Function(_$_TableState<T>) then) =
      __$$_TableStateCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {bool loading,
      String error,
      bool apiHasMoreData,
      List<T> elements,
      Filters filters});

  @override
  $FiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_TableStateCopyWithImpl<T, $Res>
    extends _$TableStateCopyWithImpl<T, $Res>
    implements _$$_TableStateCopyWith<T, $Res> {
  __$$_TableStateCopyWithImpl(
      _$_TableState<T> _value, $Res Function(_$_TableState<T>) _then)
      : super(_value, (v) => _then(v as _$_TableState<T>));

  @override
  _$_TableState<T> get _value => super._value as _$_TableState<T>;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? apiHasMoreData = freezed,
    Object? elements = freezed,
    Object? filters = freezed,
  }) {
    return _then(_$_TableState<T>(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      apiHasMoreData: apiHasMoreData == freezed
          ? _value.apiHasMoreData
          : apiHasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      elements: elements == freezed
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<T>,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Filters,
    ));
  }
}

/// @nodoc

class _$_TableState<T> implements _TableState<T> {
  _$_TableState(
      {required this.loading,
      required this.error,
      required this.apiHasMoreData,
      required final List<T> elements,
      required this.filters})
      : _elements = elements;

  @override
  final bool loading;
  @override
  final String error;
  @override
  final bool apiHasMoreData;
  final List<T> _elements;
  @override
  List<T> get elements {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  @override
  final Filters filters;

  @override
  String toString() {
    return 'TableState<$T>(loading: $loading, error: $error, apiHasMoreData: $apiHasMoreData, elements: $elements, filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableState<T> &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.apiHasMoreData, apiHasMoreData) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality().equals(other.filters, filters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(apiHasMoreData),
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(filters));

  @JsonKey(ignore: true)
  @override
  _$$_TableStateCopyWith<T, _$_TableState<T>> get copyWith =>
      __$$_TableStateCopyWithImpl<T, _$_TableState<T>>(this, _$identity);
}

abstract class _TableState<T> implements TableState<T> {
  factory _TableState(
      {required final bool loading,
      required final String error,
      required final bool apiHasMoreData,
      required final List<T> elements,
      required final Filters filters}) = _$_TableState<T>;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  String get error => throw _privateConstructorUsedError;
  @override
  bool get apiHasMoreData => throw _privateConstructorUsedError;
  @override
  List<T> get elements => throw _privateConstructorUsedError;
  @override
  Filters get filters => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TableStateCopyWith<T, _$_TableState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

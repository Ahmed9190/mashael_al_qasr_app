// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'table_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TableResponse<T> {
  List<T> get data => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String? get handshakeCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableResponseCopyWith<T, TableResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableResponseCopyWith<T, $Res> {
  factory $TableResponseCopyWith(
          TableResponse<T> value, $Res Function(TableResponse<T>) then) =
      _$TableResponseCopyWithImpl<T, $Res>;
  $Res call({List<T> data, bool hasMore, String? handshakeCode});
}

/// @nodoc
class _$TableResponseCopyWithImpl<T, $Res>
    implements $TableResponseCopyWith<T, $Res> {
  _$TableResponseCopyWithImpl(this._value, this._then);

  final TableResponse<T> _value;
  // ignore: unused_field
  final $Res Function(TableResponse<T>) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? hasMore = freezed,
    Object? handshakeCode = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      handshakeCode: handshakeCode == freezed
          ? _value.handshakeCode
          : handshakeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TableResponseCopyWith<T, $Res>
    implements $TableResponseCopyWith<T, $Res> {
  factory _$$_TableResponseCopyWith(
          _$_TableResponse<T> value, $Res Function(_$_TableResponse<T>) then) =
      __$$_TableResponseCopyWithImpl<T, $Res>;
  @override
  $Res call({List<T> data, bool hasMore, String? handshakeCode});
}

/// @nodoc
class __$$_TableResponseCopyWithImpl<T, $Res>
    extends _$TableResponseCopyWithImpl<T, $Res>
    implements _$$_TableResponseCopyWith<T, $Res> {
  __$$_TableResponseCopyWithImpl(
      _$_TableResponse<T> _value, $Res Function(_$_TableResponse<T>) _then)
      : super(_value, (v) => _then(v as _$_TableResponse<T>));

  @override
  _$_TableResponse<T> get _value => super._value as _$_TableResponse<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? hasMore = freezed,
    Object? handshakeCode = freezed,
  }) {
    return _then(_$_TableResponse<T>(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      handshakeCode: handshakeCode == freezed
          ? _value.handshakeCode
          : handshakeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TableResponse<T> implements _TableResponse<T> {
  _$_TableResponse(
      {final List<T> data = const [], this.hasMore = false, this.handshakeCode})
      : _data = data;

  final List<T> _data;
  @override
  @JsonKey()
  List<T> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool hasMore;
  @override
  final String? handshakeCode;

  @override
  String toString() {
    return 'TableResponse<$T>(data: $data, hasMore: $hasMore, handshakeCode: $handshakeCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableResponse<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.hasMore, hasMore) &&
            const DeepCollectionEquality()
                .equals(other.handshakeCode, handshakeCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(hasMore),
      const DeepCollectionEquality().hash(handshakeCode));

  @JsonKey(ignore: true)
  @override
  _$$_TableResponseCopyWith<T, _$_TableResponse<T>> get copyWith =>
      __$$_TableResponseCopyWithImpl<T, _$_TableResponse<T>>(this, _$identity);
}

abstract class _TableResponse<T> implements TableResponse<T> {
  factory _TableResponse(
      {final List<T> data,
      final bool hasMore,
      final String? handshakeCode}) = _$_TableResponse<T>;

  @override
  List<T> get data => throw _privateConstructorUsedError;
  @override
  bool get hasMore => throw _privateConstructorUsedError;
  @override
  String? get handshakeCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TableResponseCopyWith<T, _$_TableResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

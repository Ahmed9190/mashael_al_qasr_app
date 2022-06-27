// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'string_with_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StringWithKey<T> {
  T get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StringWithKeyCopyWith<T, StringWithKey<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringWithKeyCopyWith<T, $Res> {
  factory $StringWithKeyCopyWith(
          StringWithKey<T> value, $Res Function(StringWithKey<T>) then) =
      _$StringWithKeyCopyWithImpl<T, $Res>;
  $Res call({T key, String name});
}

/// @nodoc
class _$StringWithKeyCopyWithImpl<T, $Res>
    implements $StringWithKeyCopyWith<T, $Res> {
  _$StringWithKeyCopyWithImpl(this._value, this._then);

  final StringWithKey<T> _value;
  // ignore: unused_field
  final $Res Function(StringWithKey<T>) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as T,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StringWithKeyCopyWith<T, $Res>
    implements $StringWithKeyCopyWith<T, $Res> {
  factory _$$_StringWithKeyCopyWith(
          _$_StringWithKey<T> value, $Res Function(_$_StringWithKey<T>) then) =
      __$$_StringWithKeyCopyWithImpl<T, $Res>;
  @override
  $Res call({T key, String name});
}

/// @nodoc
class __$$_StringWithKeyCopyWithImpl<T, $Res>
    extends _$StringWithKeyCopyWithImpl<T, $Res>
    implements _$$_StringWithKeyCopyWith<T, $Res> {
  __$$_StringWithKeyCopyWithImpl(
      _$_StringWithKey<T> _value, $Res Function(_$_StringWithKey<T>) _then)
      : super(_value, (v) => _then(v as _$_StringWithKey<T>));

  @override
  _$_StringWithKey<T> get _value => super._value as _$_StringWithKey<T>;

  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_StringWithKey<T>(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as T,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StringWithKey<T> implements _StringWithKey<T> {
  _$_StringWithKey({required this.key, required this.name});

  @override
  final T key;
  @override
  final String name;

  @override
  String toString() {
    return 'StringWithKey<$T>(key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringWithKey<T> &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_StringWithKeyCopyWith<T, _$_StringWithKey<T>> get copyWith =>
      __$$_StringWithKeyCopyWithImpl<T, _$_StringWithKey<T>>(this, _$identity);
}

abstract class _StringWithKey<T> implements StringWithKey<T> {
  factory _StringWithKey({required final T key, required final String name}) =
      _$_StringWithKey<T>;

  @override
  T get key => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StringWithKeyCopyWith<T, _$_StringWithKey<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

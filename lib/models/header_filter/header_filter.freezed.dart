// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'header_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HeaderFilter {
  void Function() get clearFn => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeaderFilterCopyWith<HeaderFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderFilterCopyWith<$Res> {
  factory $HeaderFilterCopyWith(
          HeaderFilter value, $Res Function(HeaderFilter) then) =
      _$HeaderFilterCopyWithImpl<$Res>;
  $Res call({void Function() clearFn, String title, bool isActive});
}

/// @nodoc
class _$HeaderFilterCopyWithImpl<$Res> implements $HeaderFilterCopyWith<$Res> {
  _$HeaderFilterCopyWithImpl(this._value, this._then);

  final HeaderFilter _value;
  // ignore: unused_field
  final $Res Function(HeaderFilter) _then;

  @override
  $Res call({
    Object? clearFn = freezed,
    Object? title = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      clearFn: clearFn == freezed
          ? _value.clearFn
          : clearFn // ignore: cast_nullable_to_non_nullable
              as void Function(),
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_HeaderFilterCopyWith<$Res>
    implements $HeaderFilterCopyWith<$Res> {
  factory _$$_HeaderFilterCopyWith(
          _$_HeaderFilter value, $Res Function(_$_HeaderFilter) then) =
      __$$_HeaderFilterCopyWithImpl<$Res>;
  @override
  $Res call({void Function() clearFn, String title, bool isActive});
}

/// @nodoc
class __$$_HeaderFilterCopyWithImpl<$Res>
    extends _$HeaderFilterCopyWithImpl<$Res>
    implements _$$_HeaderFilterCopyWith<$Res> {
  __$$_HeaderFilterCopyWithImpl(
      _$_HeaderFilter _value, $Res Function(_$_HeaderFilter) _then)
      : super(_value, (v) => _then(v as _$_HeaderFilter));

  @override
  _$_HeaderFilter get _value => super._value as _$_HeaderFilter;

  @override
  $Res call({
    Object? clearFn = freezed,
    Object? title = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_HeaderFilter(
      clearFn: clearFn == freezed
          ? _value.clearFn
          : clearFn // ignore: cast_nullable_to_non_nullable
              as void Function(),
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HeaderFilter implements _HeaderFilter {
  _$_HeaderFilter(
      {required this.clearFn, required this.title, required this.isActive});

  @override
  final void Function() clearFn;
  @override
  final String title;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'HeaderFilter(clearFn: $clearFn, title: $title, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeaderFilter &&
            (identical(other.clearFn, clearFn) || other.clearFn == clearFn) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clearFn,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$$_HeaderFilterCopyWith<_$_HeaderFilter> get copyWith =>
      __$$_HeaderFilterCopyWithImpl<_$_HeaderFilter>(this, _$identity);
}

abstract class _HeaderFilter implements HeaderFilter {
  factory _HeaderFilter(
      {required final void Function() clearFn,
      required final String title,
      required final bool isActive}) = _$_HeaderFilter;

  @override
  void Function() get clearFn => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  bool get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HeaderFilterCopyWith<_$_HeaderFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

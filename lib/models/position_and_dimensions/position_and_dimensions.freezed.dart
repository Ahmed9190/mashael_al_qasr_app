// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'position_and_dimensions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PositionAndDimensions {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionAndDimensionsCopyWith<PositionAndDimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionAndDimensionsCopyWith<$Res> {
  factory $PositionAndDimensionsCopyWith(PositionAndDimensions value,
          $Res Function(PositionAndDimensions) then) =
      _$PositionAndDimensionsCopyWithImpl<$Res>;
  $Res call({double x, double y, double width, double height});
}

/// @nodoc
class _$PositionAndDimensionsCopyWithImpl<$Res>
    implements $PositionAndDimensionsCopyWith<$Res> {
  _$PositionAndDimensionsCopyWithImpl(this._value, this._then);

  final PositionAndDimensions _value;
  // ignore: unused_field
  final $Res Function(PositionAndDimensions) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PositionAndDimensionsCopyWith<$Res>
    implements $PositionAndDimensionsCopyWith<$Res> {
  factory _$$_PositionAndDimensionsCopyWith(_$_PositionAndDimensions value,
          $Res Function(_$_PositionAndDimensions) then) =
      __$$_PositionAndDimensionsCopyWithImpl<$Res>;
  @override
  $Res call({double x, double y, double width, double height});
}

/// @nodoc
class __$$_PositionAndDimensionsCopyWithImpl<$Res>
    extends _$PositionAndDimensionsCopyWithImpl<$Res>
    implements _$$_PositionAndDimensionsCopyWith<$Res> {
  __$$_PositionAndDimensionsCopyWithImpl(_$_PositionAndDimensions _value,
      $Res Function(_$_PositionAndDimensions) _then)
      : super(_value, (v) => _then(v as _$_PositionAndDimensions));

  @override
  _$_PositionAndDimensions get _value =>
      super._value as _$_PositionAndDimensions;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$_PositionAndDimensions(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PositionAndDimensions implements _PositionAndDimensions {
  _$_PositionAndDimensions(
      {required this.x,
      required this.y,
      required this.width,
      required this.height});

  @override
  final double x;
  @override
  final double y;
  @override
  final double width;
  @override
  final double height;

  @override
  String toString() {
    return 'PositionAndDimensions(x: $x, y: $y, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionAndDimensions &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$$_PositionAndDimensionsCopyWith<_$_PositionAndDimensions> get copyWith =>
      __$$_PositionAndDimensionsCopyWithImpl<_$_PositionAndDimensions>(
          this, _$identity);
}

abstract class _PositionAndDimensions implements PositionAndDimensions {
  factory _PositionAndDimensions(
      {required final double x,
      required final double y,
      required final double width,
      required final double height}) = _$_PositionAndDimensions;

  @override
  double get x => throw _privateConstructorUsedError;
  @override
  double get y => throw _privateConstructorUsedError;
  @override
  double get width => throw _privateConstructorUsedError;
  @override
  double get height => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PositionAndDimensionsCopyWith<_$_PositionAndDimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

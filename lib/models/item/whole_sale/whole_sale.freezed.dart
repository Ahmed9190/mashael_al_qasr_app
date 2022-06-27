// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'whole_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WholeSale _$WholeSaleFromJson(Map<String, dynamic> json) {
  return _WholeSale.fromJson(json);
}

/// @nodoc
mixin _$WholeSale {
  int get qty => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WholeSaleCopyWith<WholeSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WholeSaleCopyWith<$Res> {
  factory $WholeSaleCopyWith(WholeSale value, $Res Function(WholeSale) then) =
      _$WholeSaleCopyWithImpl<$Res>;
  $Res call({int qty, double price});
}

/// @nodoc
class _$WholeSaleCopyWithImpl<$Res> implements $WholeSaleCopyWith<$Res> {
  _$WholeSaleCopyWithImpl(this._value, this._then);

  final WholeSale _value;
  // ignore: unused_field
  final $Res Function(WholeSale) _then;

  @override
  $Res call({
    Object? qty = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_WholeSaleCopyWith<$Res> implements $WholeSaleCopyWith<$Res> {
  factory _$$_WholeSaleCopyWith(
          _$_WholeSale value, $Res Function(_$_WholeSale) then) =
      __$$_WholeSaleCopyWithImpl<$Res>;
  @override
  $Res call({int qty, double price});
}

/// @nodoc
class __$$_WholeSaleCopyWithImpl<$Res> extends _$WholeSaleCopyWithImpl<$Res>
    implements _$$_WholeSaleCopyWith<$Res> {
  __$$_WholeSaleCopyWithImpl(
      _$_WholeSale _value, $Res Function(_$_WholeSale) _then)
      : super(_value, (v) => _then(v as _$_WholeSale));

  @override
  _$_WholeSale get _value => super._value as _$_WholeSale;

  @override
  $Res call({
    Object? qty = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_WholeSale(
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WholeSale implements _WholeSale {
  _$_WholeSale({required this.qty, required this.price});

  factory _$_WholeSale.fromJson(Map<String, dynamic> json) =>
      _$$_WholeSaleFromJson(json);

  @override
  final int qty;
  @override
  final double price;

  @override
  String toString() {
    return 'WholeSale(qty: $qty, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WholeSale &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_WholeSaleCopyWith<_$_WholeSale> get copyWith =>
      __$$_WholeSaleCopyWithImpl<_$_WholeSale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WholeSaleToJson(this);
  }
}

abstract class _WholeSale implements WholeSale {
  factory _WholeSale({required final int qty, required final double price}) =
      _$_WholeSale;

  factory _WholeSale.fromJson(Map<String, dynamic> json) =
      _$_WholeSale.fromJson;

  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WholeSaleCopyWith<_$_WholeSale> get copyWith =>
      throw _privateConstructorUsedError;
}

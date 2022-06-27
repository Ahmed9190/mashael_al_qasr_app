// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vip_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VipSale _$VipSaleFromJson(Map<String, dynamic> json) {
  return _VipSale.fromJson(json);
}

/// @nodoc
mixin _$VipSale {
  int get qty => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VipSaleCopyWith<VipSale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VipSaleCopyWith<$Res> {
  factory $VipSaleCopyWith(VipSale value, $Res Function(VipSale) then) =
      _$VipSaleCopyWithImpl<$Res>;
  $Res call({int qty, double price});
}

/// @nodoc
class _$VipSaleCopyWithImpl<$Res> implements $VipSaleCopyWith<$Res> {
  _$VipSaleCopyWithImpl(this._value, this._then);

  final VipSale _value;
  // ignore: unused_field
  final $Res Function(VipSale) _then;

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
abstract class _$$_VipSaleCopyWith<$Res> implements $VipSaleCopyWith<$Res> {
  factory _$$_VipSaleCopyWith(
          _$_VipSale value, $Res Function(_$_VipSale) then) =
      __$$_VipSaleCopyWithImpl<$Res>;
  @override
  $Res call({int qty, double price});
}

/// @nodoc
class __$$_VipSaleCopyWithImpl<$Res> extends _$VipSaleCopyWithImpl<$Res>
    implements _$$_VipSaleCopyWith<$Res> {
  __$$_VipSaleCopyWithImpl(_$_VipSale _value, $Res Function(_$_VipSale) _then)
      : super(_value, (v) => _then(v as _$_VipSale));

  @override
  _$_VipSale get _value => super._value as _$_VipSale;

  @override
  $Res call({
    Object? qty = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_VipSale(
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
class _$_VipSale implements _VipSale {
  _$_VipSale({required this.qty, required this.price});

  factory _$_VipSale.fromJson(Map<String, dynamic> json) =>
      _$$_VipSaleFromJson(json);

  @override
  final int qty;
  @override
  final double price;

  @override
  String toString() {
    return 'VipSale(qty: $qty, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VipSale &&
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
  _$$_VipSaleCopyWith<_$_VipSale> get copyWith =>
      __$$_VipSaleCopyWithImpl<_$_VipSale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VipSaleToJson(this);
  }
}

abstract class _VipSale implements VipSale {
  factory _VipSale({required final int qty, required final double price}) =
      _$_VipSale;

  factory _VipSale.fromJson(Map<String, dynamic> json) = _$_VipSale.fromJson;

  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VipSaleCopyWith<_$_VipSale> get copyWith =>
      throw _privateConstructorUsedError;
}

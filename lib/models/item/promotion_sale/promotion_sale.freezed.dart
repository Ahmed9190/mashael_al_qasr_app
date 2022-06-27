// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'promotion_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromotionSale _$PromotionSaleFromJson(Map<String, dynamic> json) {
  return _PromotionSale.fromJson(json);
}

/// @nodoc
mixin _$PromotionSale {
  int? get qtyReq => throw _privateConstructorUsedError;
  int? get qtyFree => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionSaleCopyWith<PromotionSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionSaleCopyWith<$Res> {
  factory $PromotionSaleCopyWith(
          PromotionSale value, $Res Function(PromotionSale) then) =
      _$PromotionSaleCopyWithImpl<$Res>;
  $Res call({int? qtyReq, int? qtyFree});
}

/// @nodoc
class _$PromotionSaleCopyWithImpl<$Res>
    implements $PromotionSaleCopyWith<$Res> {
  _$PromotionSaleCopyWithImpl(this._value, this._then);

  final PromotionSale _value;
  // ignore: unused_field
  final $Res Function(PromotionSale) _then;

  @override
  $Res call({
    Object? qtyReq = freezed,
    Object? qtyFree = freezed,
  }) {
    return _then(_value.copyWith(
      qtyReq: qtyReq == freezed
          ? _value.qtyReq
          : qtyReq // ignore: cast_nullable_to_non_nullable
              as int?,
      qtyFree: qtyFree == freezed
          ? _value.qtyFree
          : qtyFree // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_PromotionSaleCopyWith<$Res>
    implements $PromotionSaleCopyWith<$Res> {
  factory _$$_PromotionSaleCopyWith(
          _$_PromotionSale value, $Res Function(_$_PromotionSale) then) =
      __$$_PromotionSaleCopyWithImpl<$Res>;
  @override
  $Res call({int? qtyReq, int? qtyFree});
}

/// @nodoc
class __$$_PromotionSaleCopyWithImpl<$Res>
    extends _$PromotionSaleCopyWithImpl<$Res>
    implements _$$_PromotionSaleCopyWith<$Res> {
  __$$_PromotionSaleCopyWithImpl(
      _$_PromotionSale _value, $Res Function(_$_PromotionSale) _then)
      : super(_value, (v) => _then(v as _$_PromotionSale));

  @override
  _$_PromotionSale get _value => super._value as _$_PromotionSale;

  @override
  $Res call({
    Object? qtyReq = freezed,
    Object? qtyFree = freezed,
  }) {
    return _then(_$_PromotionSale(
      qtyReq: qtyReq == freezed
          ? _value.qtyReq
          : qtyReq // ignore: cast_nullable_to_non_nullable
              as int?,
      qtyFree: qtyFree == freezed
          ? _value.qtyFree
          : qtyFree // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionSale extends _PromotionSale {
  _$_PromotionSale({this.qtyReq, this.qtyFree}) : super._();

  factory _$_PromotionSale.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionSaleFromJson(json);

  @override
  final int? qtyReq;
  @override
  final int? qtyFree;

  @override
  String toString() {
    return 'PromotionSale(qtyReq: $qtyReq, qtyFree: $qtyFree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionSale &&
            const DeepCollectionEquality().equals(other.qtyReq, qtyReq) &&
            const DeepCollectionEquality().equals(other.qtyFree, qtyFree));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(qtyReq),
      const DeepCollectionEquality().hash(qtyFree));

  @JsonKey(ignore: true)
  @override
  _$$_PromotionSaleCopyWith<_$_PromotionSale> get copyWith =>
      __$$_PromotionSaleCopyWithImpl<_$_PromotionSale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionSaleToJson(this);
  }
}

abstract class _PromotionSale extends PromotionSale {
  factory _PromotionSale({final int? qtyReq, final int? qtyFree}) =
      _$_PromotionSale;
  _PromotionSale._() : super._();

  factory _PromotionSale.fromJson(Map<String, dynamic> json) =
      _$_PromotionSale.fromJson;

  @override
  int? get qtyReq => throw _privateConstructorUsedError;
  @override
  int? get qtyFree => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionSaleCopyWith<_$_PromotionSale> get copyWith =>
      throw _privateConstructorUsedError;
}

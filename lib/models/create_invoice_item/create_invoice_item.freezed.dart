// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_invoice_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateInvoiceItem {
  String get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get availableQty => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  WholeSale? get wholeSale =>
      throw _privateConstructorUsedError; // VipSale? vipSale,
  PromotionSale? get promotionSale => throw _privateConstructorUsedError;
  SaleTypeOptions get saleType => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateInvoiceItemCopyWith<CreateInvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateInvoiceItemCopyWith<$Res> {
  factory $CreateInvoiceItemCopyWith(
          CreateInvoiceItem value, $Res Function(CreateInvoiceItem) then) =
      _$CreateInvoiceItemCopyWithImpl<$Res>;
  $Res call(
      {String number,
      String name,
      int availableQty,
      double unitPrice,
      WholeSale? wholeSale,
      PromotionSale? promotionSale,
      SaleTypeOptions saleType,
      int qty});

  $WholeSaleCopyWith<$Res>? get wholeSale;
  $PromotionSaleCopyWith<$Res>? get promotionSale;
}

/// @nodoc
class _$CreateInvoiceItemCopyWithImpl<$Res>
    implements $CreateInvoiceItemCopyWith<$Res> {
  _$CreateInvoiceItemCopyWithImpl(this._value, this._then);

  final CreateInvoiceItem _value;
  // ignore: unused_field
  final $Res Function(CreateInvoiceItem) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? availableQty = freezed,
    Object? unitPrice = freezed,
    Object? wholeSale = freezed,
    Object? promotionSale = freezed,
    Object? saleType = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      availableQty: availableQty == freezed
          ? _value.availableQty
          : availableQty // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      wholeSale: wholeSale == freezed
          ? _value.wholeSale
          : wholeSale // ignore: cast_nullable_to_non_nullable
              as WholeSale?,
      promotionSale: promotionSale == freezed
          ? _value.promotionSale
          : promotionSale // ignore: cast_nullable_to_non_nullable
              as PromotionSale?,
      saleType: saleType == freezed
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as SaleTypeOptions,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $WholeSaleCopyWith<$Res>? get wholeSale {
    if (_value.wholeSale == null) {
      return null;
    }

    return $WholeSaleCopyWith<$Res>(_value.wholeSale!, (value) {
      return _then(_value.copyWith(wholeSale: value));
    });
  }

  @override
  $PromotionSaleCopyWith<$Res>? get promotionSale {
    if (_value.promotionSale == null) {
      return null;
    }

    return $PromotionSaleCopyWith<$Res>(_value.promotionSale!, (value) {
      return _then(_value.copyWith(promotionSale: value));
    });
  }
}

/// @nodoc
abstract class _$$_CreateInvoiceItemCopyWith<$Res>
    implements $CreateInvoiceItemCopyWith<$Res> {
  factory _$$_CreateInvoiceItemCopyWith(_$_CreateInvoiceItem value,
          $Res Function(_$_CreateInvoiceItem) then) =
      __$$_CreateInvoiceItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String number,
      String name,
      int availableQty,
      double unitPrice,
      WholeSale? wholeSale,
      PromotionSale? promotionSale,
      SaleTypeOptions saleType,
      int qty});

  @override
  $WholeSaleCopyWith<$Res>? get wholeSale;
  @override
  $PromotionSaleCopyWith<$Res>? get promotionSale;
}

/// @nodoc
class __$$_CreateInvoiceItemCopyWithImpl<$Res>
    extends _$CreateInvoiceItemCopyWithImpl<$Res>
    implements _$$_CreateInvoiceItemCopyWith<$Res> {
  __$$_CreateInvoiceItemCopyWithImpl(
      _$_CreateInvoiceItem _value, $Res Function(_$_CreateInvoiceItem) _then)
      : super(_value, (v) => _then(v as _$_CreateInvoiceItem));

  @override
  _$_CreateInvoiceItem get _value => super._value as _$_CreateInvoiceItem;

  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? availableQty = freezed,
    Object? unitPrice = freezed,
    Object? wholeSale = freezed,
    Object? promotionSale = freezed,
    Object? saleType = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$_CreateInvoiceItem(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      availableQty: availableQty == freezed
          ? _value.availableQty
          : availableQty // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      wholeSale: wholeSale == freezed
          ? _value.wholeSale
          : wholeSale // ignore: cast_nullable_to_non_nullable
              as WholeSale?,
      promotionSale: promotionSale == freezed
          ? _value.promotionSale
          : promotionSale // ignore: cast_nullable_to_non_nullable
              as PromotionSale?,
      saleType: saleType == freezed
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as SaleTypeOptions,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreateInvoiceItem extends _CreateInvoiceItem {
  _$_CreateInvoiceItem(
      {required this.number,
      required this.name,
      required this.availableQty,
      required this.unitPrice,
      this.wholeSale,
      this.promotionSale,
      required this.saleType,
      required this.qty})
      : super._();

  @override
  final String number;
  @override
  final String name;
  @override
  final int availableQty;
  @override
  final double unitPrice;
  @override
  final WholeSale? wholeSale;
// VipSale? vipSale,
  @override
  final PromotionSale? promotionSale;
  @override
  final SaleTypeOptions saleType;
  @override
  final int qty;

  @override
  String toString() {
    return 'CreateInvoiceItem(number: $number, name: $name, availableQty: $availableQty, unitPrice: $unitPrice, wholeSale: $wholeSale, promotionSale: $promotionSale, saleType: $saleType, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateInvoiceItem &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.availableQty, availableQty) &&
            const DeepCollectionEquality().equals(other.unitPrice, unitPrice) &&
            const DeepCollectionEquality().equals(other.wholeSale, wholeSale) &&
            const DeepCollectionEquality()
                .equals(other.promotionSale, promotionSale) &&
            const DeepCollectionEquality().equals(other.saleType, saleType) &&
            const DeepCollectionEquality().equals(other.qty, qty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(availableQty),
      const DeepCollectionEquality().hash(unitPrice),
      const DeepCollectionEquality().hash(wholeSale),
      const DeepCollectionEquality().hash(promotionSale),
      const DeepCollectionEquality().hash(saleType),
      const DeepCollectionEquality().hash(qty));

  @JsonKey(ignore: true)
  @override
  _$$_CreateInvoiceItemCopyWith<_$_CreateInvoiceItem> get copyWith =>
      __$$_CreateInvoiceItemCopyWithImpl<_$_CreateInvoiceItem>(
          this, _$identity);
}

abstract class _CreateInvoiceItem extends CreateInvoiceItem {
  factory _CreateInvoiceItem(
      {required final String number,
      required final String name,
      required final int availableQty,
      required final double unitPrice,
      final WholeSale? wholeSale,
      final PromotionSale? promotionSale,
      required final SaleTypeOptions saleType,
      required final int qty}) = _$_CreateInvoiceItem;
  _CreateInvoiceItem._() : super._();

  @override
  String get number => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get availableQty => throw _privateConstructorUsedError;
  @override
  double get unitPrice => throw _privateConstructorUsedError;
  @override
  WholeSale? get wholeSale => throw _privateConstructorUsedError;
  @override // VipSale? vipSale,
  PromotionSale? get promotionSale => throw _privateConstructorUsedError;
  @override
  SaleTypeOptions get saleType => throw _privateConstructorUsedError;
  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateInvoiceItemCopyWith<_$_CreateInvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

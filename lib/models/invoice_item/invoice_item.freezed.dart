// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) {
  return _InvoiceItem.fromJson(json);
}

/// @nodoc
mixin _$InvoiceItem {
  @JsonKey(name: "Itemno")
  String get number => throw _privateConstructorUsedError;
  @JsonKey(name: "QTY")
  int get qty => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "ItemDesc")
  String get name => throw _privateConstructorUsedError;
  int get freeQty => throw _privateConstructorUsedError;
  @JsonKey(name: "SaleType")
  int get saleType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceItemCopyWith<InvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemCopyWith<$Res> {
  factory $InvoiceItemCopyWith(
          InvoiceItem value, $Res Function(InvoiceItem) then) =
      _$InvoiceItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Itemno") String number,
      @JsonKey(name: "QTY") int qty,
      double unitPrice,
      @JsonKey(name: "ItemDesc") String name,
      int freeQty,
      @JsonKey(name: "SaleType") int saleType});
}

/// @nodoc
class _$InvoiceItemCopyWithImpl<$Res> implements $InvoiceItemCopyWith<$Res> {
  _$InvoiceItemCopyWithImpl(this._value, this._then);

  final InvoiceItem _value;
  // ignore: unused_field
  final $Res Function(InvoiceItem) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? qty = freezed,
    Object? unitPrice = freezed,
    Object? name = freezed,
    Object? freeQty = freezed,
    Object? saleType = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      freeQty: freeQty == freezed
          ? _value.freeQty
          : freeQty // ignore: cast_nullable_to_non_nullable
              as int,
      saleType: saleType == freezed
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_InvoiceItemCopyWith<$Res>
    implements $InvoiceItemCopyWith<$Res> {
  factory _$$_InvoiceItemCopyWith(
          _$_InvoiceItem value, $Res Function(_$_InvoiceItem) then) =
      __$$_InvoiceItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Itemno") String number,
      @JsonKey(name: "QTY") int qty,
      double unitPrice,
      @JsonKey(name: "ItemDesc") String name,
      int freeQty,
      @JsonKey(name: "SaleType") int saleType});
}

/// @nodoc
class __$$_InvoiceItemCopyWithImpl<$Res> extends _$InvoiceItemCopyWithImpl<$Res>
    implements _$$_InvoiceItemCopyWith<$Res> {
  __$$_InvoiceItemCopyWithImpl(
      _$_InvoiceItem _value, $Res Function(_$_InvoiceItem) _then)
      : super(_value, (v) => _then(v as _$_InvoiceItem));

  @override
  _$_InvoiceItem get _value => super._value as _$_InvoiceItem;

  @override
  $Res call({
    Object? number = freezed,
    Object? qty = freezed,
    Object? unitPrice = freezed,
    Object? name = freezed,
    Object? freeQty = freezed,
    Object? saleType = freezed,
  }) {
    return _then(_$_InvoiceItem(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      freeQty: freeQty == freezed
          ? _value.freeQty
          : freeQty // ignore: cast_nullable_to_non_nullable
              as int,
      saleType: saleType == freezed
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceItem extends _InvoiceItem {
  _$_InvoiceItem(
      {@JsonKey(name: "Itemno") required this.number,
      @JsonKey(name: "QTY") required this.qty,
      required this.unitPrice,
      @JsonKey(name: "ItemDesc") required this.name,
      required this.freeQty,
      @JsonKey(name: "SaleType") required this.saleType})
      : super._();

  factory _$_InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceItemFromJson(json);

  @override
  @JsonKey(name: "Itemno")
  final String number;
  @override
  @JsonKey(name: "QTY")
  final int qty;
  @override
  final double unitPrice;
  @override
  @JsonKey(name: "ItemDesc")
  final String name;
  @override
  final int freeQty;
  @override
  @JsonKey(name: "SaleType")
  final int saleType;

  @override
  String toString() {
    return 'InvoiceItem(number: $number, qty: $qty, unitPrice: $unitPrice, name: $name, freeQty: $freeQty, saleType: $saleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceItem &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.unitPrice, unitPrice) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.freeQty, freeQty) &&
            const DeepCollectionEquality().equals(other.saleType, saleType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(unitPrice),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(freeQty),
      const DeepCollectionEquality().hash(saleType));

  @JsonKey(ignore: true)
  @override
  _$$_InvoiceItemCopyWith<_$_InvoiceItem> get copyWith =>
      __$$_InvoiceItemCopyWithImpl<_$_InvoiceItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceItemToJson(this);
  }
}

abstract class _InvoiceItem extends InvoiceItem {
  factory _InvoiceItem(
      {@JsonKey(name: "Itemno") required final String number,
      @JsonKey(name: "QTY") required final int qty,
      required final double unitPrice,
      @JsonKey(name: "ItemDesc") required final String name,
      required final int freeQty,
      @JsonKey(name: "SaleType") required final int saleType}) = _$_InvoiceItem;
  _InvoiceItem._() : super._();

  factory _InvoiceItem.fromJson(Map<String, dynamic> json) =
      _$_InvoiceItem.fromJson;

  @override
  @JsonKey(name: "Itemno")
  String get number => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "QTY")
  int get qty => throw _privateConstructorUsedError;
  @override
  double get unitPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "ItemDesc")
  String get name => throw _privateConstructorUsedError;
  @override
  int get freeQty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "SaleType")
  int get saleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceItemCopyWith<_$_InvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

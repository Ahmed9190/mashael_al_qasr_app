// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get availableQty => throw _privateConstructorUsedError;
  double get sellPrice => throw _privateConstructorUsedError;
  WholeSale? get wholeSale =>
      throw _privateConstructorUsedError; // VipSale? vipSale,
  PromotionSale? get promotionSale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {String number,
      String name,
      int availableQty,
      double sellPrice,
      WholeSale? wholeSale,
      PromotionSale? promotionSale});

  $WholeSaleCopyWith<$Res>? get wholeSale;
  $PromotionSaleCopyWith<$Res>? get promotionSale;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? availableQty = freezed,
    Object? sellPrice = freezed,
    Object? wholeSale = freezed,
    Object? promotionSale = freezed,
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
      sellPrice: sellPrice == freezed
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as double,
      wholeSale: wholeSale == freezed
          ? _value.wholeSale
          : wholeSale // ignore: cast_nullable_to_non_nullable
              as WholeSale?,
      promotionSale: promotionSale == freezed
          ? _value.promotionSale
          : promotionSale // ignore: cast_nullable_to_non_nullable
              as PromotionSale?,
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
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String number,
      String name,
      int availableQty,
      double sellPrice,
      WholeSale? wholeSale,
      PromotionSale? promotionSale});

  @override
  $WholeSaleCopyWith<$Res>? get wholeSale;
  @override
  $PromotionSaleCopyWith<$Res>? get promotionSale;
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, (v) => _then(v as _$_Item));

  @override
  _$_Item get _value => super._value as _$_Item;

  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? availableQty = freezed,
    Object? sellPrice = freezed,
    Object? wholeSale = freezed,
    Object? promotionSale = freezed,
  }) {
    return _then(_$_Item(
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
      sellPrice: sellPrice == freezed
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as double,
      wholeSale: wholeSale == freezed
          ? _value.wholeSale
          : wholeSale // ignore: cast_nullable_to_non_nullable
              as WholeSale?,
      promotionSale: promotionSale == freezed
          ? _value.promotionSale
          : promotionSale // ignore: cast_nullable_to_non_nullable
              as PromotionSale?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  _$_Item(
      {required this.number,
      required this.name,
      required this.availableQty,
      required this.sellPrice,
      this.wholeSale,
      this.promotionSale});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String number;
  @override
  final String name;
  @override
  final int availableQty;
  @override
  final double sellPrice;
  @override
  final WholeSale? wholeSale;
// VipSale? vipSale,
  @override
  final PromotionSale? promotionSale;

  @override
  String toString() {
    return 'Item(number: $number, name: $name, availableQty: $availableQty, sellPrice: $sellPrice, wholeSale: $wholeSale, promotionSale: $promotionSale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.availableQty, availableQty) &&
            const DeepCollectionEquality().equals(other.sellPrice, sellPrice) &&
            const DeepCollectionEquality().equals(other.wholeSale, wholeSale) &&
            const DeepCollectionEquality()
                .equals(other.promotionSale, promotionSale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(availableQty),
      const DeepCollectionEquality().hash(sellPrice),
      const DeepCollectionEquality().hash(wholeSale),
      const DeepCollectionEquality().hash(promotionSale));

  @JsonKey(ignore: true)
  @override
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  factory _Item(
      {required final String number,
      required final String name,
      required final int availableQty,
      required final double sellPrice,
      final WholeSale? wholeSale,
      final PromotionSale? promotionSale}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get number => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get availableQty => throw _privateConstructorUsedError;
  @override
  double get sellPrice => throw _privateConstructorUsedError;
  @override
  WholeSale? get wholeSale => throw _privateConstructorUsedError;
  @override // VipSale? vipSale,
  PromotionSale? get promotionSale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}

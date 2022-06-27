// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      number: json['number'] as String,
      name: json['name'] as String,
      availableQty: json['availableQty'] as int,
      sellPrice: (json['sellPrice'] as num).toDouble(),
      wholeSale: json['wholeSale'] == null
          ? null
          : WholeSale.fromJson(json['wholeSale'] as Map<String, dynamic>),
      promotionSale: json['promotionSale'] == null
          ? null
          : PromotionSale.fromJson(
              json['promotionSale'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'availableQty': instance.availableQty,
      'sellPrice': instance.sellPrice,
      'wholeSale': instance.wholeSale?.toJson(),
      'promotionSale': instance.promotionSale?.toJson(),
    };

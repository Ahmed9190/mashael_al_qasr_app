// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceItem _$$_InvoiceItemFromJson(Map<String, dynamic> json) =>
    _$_InvoiceItem(
      number: json['Itemno'] as String,
      qty: json['QTY'] as int,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      name: json['ItemDesc'] as String,
      freeQty: json['freeQty'] as int,
      saleType: json['SaleType'] as int,
    );

Map<String, dynamic> _$$_InvoiceItemToJson(_$_InvoiceItem instance) =>
    <String, dynamic>{
      'Itemno': instance.number,
      'QTY': instance.qty,
      'unitPrice': instance.unitPrice,
      'ItemDesc': instance.name,
      'freeQty': instance.freeQty,
      'SaleType': instance.saleType,
    };

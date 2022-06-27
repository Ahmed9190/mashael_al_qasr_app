// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Receipt _$$_ReceiptFromJson(Map<String, dynamic> json) => _$_Receipt(
      number: json['Recno'] as int?,
      moneyAmount: (json['Amount'] as num?)?.toDouble(),
      customerName: json['AccName'] as String?,
      date: json['CreatedDate'] as String?,
      description: json['Description'] as String?,
    );

Map<String, dynamic> _$$_ReceiptToJson(_$_Receipt instance) =>
    <String, dynamic>{
      'Recno': instance.number,
      'Amount': instance.moneyAmount,
      'AccName': instance.customerName,
      'CreatedDate': instance.date,
      'Description': instance.description,
    };

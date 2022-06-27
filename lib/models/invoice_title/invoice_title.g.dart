// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_title.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceTitle _$$_InvoiceTitleFromJson(Map<String, dynamic> json) =>
    _$_InvoiceTitle(
      number: json['invno'] as int?,
      customerName: json['CustName'] as String?,
      date: json['invdate'] as String?,
    );

Map<String, dynamic> _$$_InvoiceTitleToJson(_$_InvoiceTitle instance) =>
    <String, dynamic>{
      'invno': instance.number,
      'CustName': instance.customerName,
      'invdate': instance.date,
    };

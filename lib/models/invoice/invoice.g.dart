// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Invoice _$$_InvoiceFromJson(Map<String, dynamic> json) => _$_Invoice(
      number: json['invno'] as int,
      date: json['invdate'] as String?,
      customerName: json['CustName'] as String?,
      customerVatNo: json['customerVATno'] as int?,
      total: (json['total'] as num?)?.toDouble(),
      discountTotal: (json['DiscountTotal'] as num?)?.toDouble(),
      netTotal: (json['netTotal'] as num?)?.toDouble(),
      totalAfterVAT: (json['TotAfterVAT'] as num?)?.toDouble(),
      vat: (json['VATamount'] as num?)?.toDouble(),
      payType: json['PayType'] as String?,
      items: (json['invoiceItems'] as List<dynamic>?)
          ?.map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InvoiceToJson(_$_Invoice instance) =>
    <String, dynamic>{
      'invno': instance.number,
      'invdate': instance.date,
      'CustName': instance.customerName,
      'customerVATno': instance.customerVatNo,
      'total': instance.total,
      'DiscountTotal': instance.discountTotal,
      'netTotal': instance.netTotal,
      'TotAfterVAT': instance.totalAfterVAT,
      'VATamount': instance.vat,
      'PayType': instance.payType,
      'invoiceItems': instance.items?.map((e) => e.toJson()).toList(),
    };

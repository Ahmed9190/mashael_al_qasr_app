// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateInvoice _$$_CreateInvoiceFromJson(Map<String, dynamic> json) =>
    _$_CreateInvoice(
      branchSubno: json['BranchSubno'] as int?,
      warehouseNo: json['whno'] as int?,
      accNo: json['Accno'] as int?,
      saleAccountNo: json['SaleAccno'] as int?,
      customerName: json['AccName'] as String?,
      customerVatNo: json['customerVatNo'] as int?,
      total: (json['total'] as num?)?.toDouble() ?? 0.0,
      notes: json['notes'] as String? ?? "",
      payType: json['PayType'] as int?,
      createdUserNo: json['Createduserno'] as int?,
      customerNo: json['Custno'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CreateInvoiceToJson(_$_CreateInvoice instance) =>
    <String, dynamic>{
      'BranchSubno': instance.branchSubno,
      'whno': instance.warehouseNo,
      'Accno': instance.accNo,
      'SaleAccno': instance.saleAccountNo,
      'AccName': instance.customerName,
      'customerVatNo': instance.customerVatNo,
      'total': instance.total,
      'notes': instance.notes,
      'PayType': instance.payType,
      'Createduserno': instance.createdUserNo,
      'Custno': instance.customerNo,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

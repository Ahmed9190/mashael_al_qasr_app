// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateReceipt _$$_CreateReceiptFromJson(Map<String, dynamic> json) =>
    _$_CreateReceipt(
      userNo: json['userNo'] as int?,
      cashAccNo: json['cashAccNo'] as int?,
      customerNo: json['accNo'] as int?,
      moneyAmount: (json['amount'] as num?)?.toDouble(),
      description: json['description'] as String?,
      branchSubno: json['BranchSubno'] as int?,
    );

Map<String, dynamic> _$$_CreateReceiptToJson(_$_CreateReceipt instance) =>
    <String, dynamic>{
      'userNo': instance.userNo,
      'cashAccNo': instance.cashAccNo,
      'accNo': instance.customerNo,
      'amount': instance.moneyAmount,
      'description': instance.description,
      'BranchSubno': instance.branchSubno,
    };

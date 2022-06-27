// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      number: json['AccNo'] as int?,
      name: json['AccName'] as String?,
      vatNo: json['VATno'] as int?,
      debts: (json['debts'] as num?)?.toDouble(),
      creditLimit: (json['CreditLimit'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'AccNo': instance.number,
      'AccName': instance.name,
      'VATno': instance.vatNo,
      'debts': instance.debts,
      'CreditLimit': instance.creditLimit,
    };

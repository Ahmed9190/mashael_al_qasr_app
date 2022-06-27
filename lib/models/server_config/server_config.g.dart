// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerConfig _$$_ServerConfigFromJson(Map<String, dynamic> json) =>
    _$_ServerConfig(
      vatRate: (json['vatRate'] as num).toDouble(),
      version: (json['version'] as num).toDouble(),
      saleAccno: json['SaleAccno'] as int,
      cashSaleAccno: json['CashSaleAccno'] as int,
    );

Map<String, dynamic> _$$_ServerConfigToJson(_$_ServerConfig instance) =>
    <String, dynamic>{
      'vatRate': instance.vatRate,
      'version': instance.version,
      'SaleAccno': instance.saleAccno,
      'CashSaleAccno': instance.cashSaleAccno,
    };

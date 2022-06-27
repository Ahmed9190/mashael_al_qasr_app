// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Filters _$$_FiltersFromJson(Map<String, dynamic> json) => _$_Filters(
      fromDate: json['from'] as String?,
      toDate: json['to'] as String?,
      customerNo: json['Custno'] as int?,
    );

Map<String, dynamic> _$$_FiltersToJson(_$_Filters instance) =>
    <String, dynamic>{
      'from': instance.fromDate,
      'to': instance.toDate,
      'Custno': instance.customerNo,
    };

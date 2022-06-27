// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableResponse<T> _$TableResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    TableResponse<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      hasMore: json['hasMore'] as bool,
      handshakeCode: json['handshakeCode'] as String?,
    );

Map<String, dynamic> _$TableResponseToJson<T>(
  TableResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
      'hasMore': instance.hasMore,
      'handshakeCode': instance.handshakeCode,
    };

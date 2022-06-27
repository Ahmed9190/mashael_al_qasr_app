// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableState<T> _$TableStateFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    TableState<T>(
      loading: json['loading'] as bool,
      error: json['error'] as String,
      apiHasMoreData: json['apiHasMoreData'] as bool,
      elements: (json['elements'] as List<dynamic>).map(fromJsonT).toList(),
      filters: Filters.fromJson(json['filters']),
    );

Map<String, dynamic> _$TableStateToJson<T>(
  TableState<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'apiHasMoreData': instance.apiHasMoreData,
      'elements': instance.elements.map(toJsonT).toList(),
      'filters': instance.filters.toJson(),
    };

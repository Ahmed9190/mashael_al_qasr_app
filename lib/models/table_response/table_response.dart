import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_response.freezed.dart';
part 'table_response.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class TableResponse<T> with _$TableResponse<T> {
  factory TableResponse({
    @Default([]) List<T> data,
    @Default(false) bool hasMore,
    String? handshakeCode,
  }) = _TableResponse<T>;

  factory TableResponse.fromJson(Map<String, dynamic> json, dynamic fromJsonT) {
    return _$TableResponseFromJson<T>(json, fromJsonT);
  }
}

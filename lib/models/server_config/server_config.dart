// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_config.freezed.dart';
part 'server_config.g.dart';

@freezed
class ServerConfig with _$ServerConfig {
  factory ServerConfig({
    required double vatRate,
    required double version,
    @JsonKey(name: "SaleAccno") required int saleAccno,
    @JsonKey(name: "CashSaleAccno") required int cashSaleAccno,
  }) = _ServerConfig;

  factory ServerConfig.fromJson(Map<String, dynamic> json) =>
      _$ServerConfigFromJson(json);
}

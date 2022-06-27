import 'package:freezed_annotation/freezed_annotation.dart';

part 'vip_sale.freezed.dart';
part 'vip_sale.g.dart';

@freezed
class VipSale with _$VipSale {
  factory VipSale({
    required int qty,
    required double price,
  }) = _VipSale;

  factory VipSale.fromJson(Map<String, dynamic> json) =>
      _$VipSaleFromJson(json);
}

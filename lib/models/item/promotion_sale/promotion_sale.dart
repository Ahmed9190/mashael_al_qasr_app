import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_sale.freezed.dart';
part 'promotion_sale.g.dart';

@freezed
class PromotionSale with _$PromotionSale {
  const PromotionSale._();

  factory PromotionSale({
    int? qtyReq,
    int? qtyFree,
  }) = _PromotionSale;

  factory PromotionSale.fromJson(Map<String, dynamic> json) =>
      _$PromotionSaleFromJson(json);

  int calculateFreeQty({
    required int qty,
  }) {
    int freeQty = 0;
    if (qtyFree != 0) {
      int free = qty ~/ qtyReq!;
      freeQty = free * qtyFree!;
    }
    return freeQty;
  }
}

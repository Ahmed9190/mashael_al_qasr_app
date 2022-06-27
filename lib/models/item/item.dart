import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mashael_al_qasr_5/models/item/promotion_sale/promotion_sale.dart';
import 'package:mashael_al_qasr_5/models/item/whole_sale/whole_sale.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    required String number,
    required String name,
    required int availableQty,
    required double sellPrice,
    WholeSale? wholeSale,
    // VipSale? vipSale,
    PromotionSale? promotionSale,
  }) = _Item;

  factory Item.fromJson(dynamic json) => _$ItemFromJson(json);

  static Item findItemById(String itemNo, List<Item> items) {
    return items.firstWhere((Item item) => item.number == itemNo);
  }
}

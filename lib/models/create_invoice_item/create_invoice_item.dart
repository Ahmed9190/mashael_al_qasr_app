import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashael_al_qasr_5/models/item/item.dart';
import 'package:mashael_al_qasr_5/models/item/promotion_sale/promotion_sale.dart';
import 'package:mashael_al_qasr_5/models/item/whole_sale/whole_sale.dart';
import 'package:mashael_al_qasr_5/models/string_with_key/string_with_key.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

part 'create_invoice_item.freezed.dart';

enum SaleTypeOptions {
  single,
  whole,
  // vip,
  freePromotion,
}

@freezed
class CreateInvoiceItem with _$CreateInvoiceItem {
  const CreateInvoiceItem._();

  factory CreateInvoiceItem({
    required String number,
    required String name,
    required int availableQty,
    required double unitPrice,
    WholeSale? wholeSale,
    // VipSale? vipSale,
    PromotionSale? promotionSale,
    required SaleTypeOptions saleType,
    required int qty,
  }) = _CreateInvoiceItem;

  factory CreateInvoiceItem.fromItem({
    required Item item,
  }) =>
      CreateInvoiceItem(
        number: item.number,
        name: item.name,
        availableQty: item.availableQty,
        unitPrice: item.sellPrice,
        wholeSale: item.wholeSale,
        // // vipSale: item.vipSale,
        promotionSale: item.promotionSale,
        saleType: SaleTypeOptions.single,
        qty: 1,
      );

  int get freeQty {
    return saleType != SaleTypeOptions.freePromotion
        ? 0
        : promotionSale!.calculateFreeQty(qty: qty);
  }

  int getSaleTypeNumber() {
    switch (saleType) {
      case SaleTypeOptions.single:
        return 1;
      case SaleTypeOptions.whole:
        return 2;
      // case SaleTypeOptions.vip:
      //   return 3;
      case SaleTypeOptions.freePromotion:
        return 4;
    }
  }

  double get calculateTotal {
    return calculateUnitPrice * calculatedQty;
  }

  double get calculateUnitPrice {
    switch (saleType) {
      case SaleTypeOptions.single:
      case SaleTypeOptions.freePromotion:
        return unitPrice;
      case SaleTypeOptions.whole:
        return wholeSale!.price;
      // case SaleTypeOptions.vip:
      // return vipSale!.price;
    }
  }

  int get calculatedQty {
    switch (saleType) {
      case SaleTypeOptions.single:
      case SaleTypeOptions.freePromotion:
        return qty;
      case SaleTypeOptions.whole:
        return qty * wholeSale!.qty;
      // case SaleTypeOptions.vip:
      // return qty * vipSale!.qty;
    }
  }

  List<StringWithKey<SaleTypeOptions>> getSaleTypeOptions(
    BuildContext context,
  ) {
    List<StringWithKey<SaleTypeOptions>> saleTypeOptions = [
      StringWithKey<SaleTypeOptions>(
        key: SaleTypeOptions.single,
        name: t(context).retail,
      ),
    ];

    if (wholeSale != null) {
      saleTypeOptions.add(
        StringWithKey<SaleTypeOptions>(
          key: SaleTypeOptions.whole,
          name: t(context).wholeSale,
        ),
      );
    }
    // if (vipSale != null) {
    //   saleTypeOptions.add(
    //     StringWithKey<SaleTypeOptions>(
    //       key: SaleTypeOptions.vip,
    //       name: "كبار العملاء",
    //     ),
    //   );
    // }

    if (promotionSale != null) {
      saleTypeOptions.add(
        StringWithKey<SaleTypeOptions>(
          key: SaleTypeOptions.freePromotion,
          name: t(context).freePromotions,
        ),
      );
    }
    return saleTypeOptions;
  }

  int get maxQty {
    switch (saleType) {
      case SaleTypeOptions.whole:
        return availableQty ~/ wholeSale!.qty;
      // case SaleTypeOptions.vip:
      // return availableQty ~/ vipSale!.qty;
      default:
        return availableQty;
    }
  }

  bool get isWholeOrVipSale => saleType == SaleTypeOptions.whole
      // || saleType == SaleTypeOptions.vip
      ;

  int get qtyPerUnit {
    switch (saleType) {
      case SaleTypeOptions.whole:
        return wholeSale!.qty;
      // case SaleTypeOptions.vip:
      // return vipSale!.qty;
      default:
        return 1;
    }
  }

  double get calculatedUnitPrice {
    switch (saleType) {
      case SaleTypeOptions.whole:
        return wholeSale!.price;
      // case SaleTypeOptions.vip:
      // return vipSale!.price;
      default:
        return unitPrice;
    }
  }
}

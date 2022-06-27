// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

part 'invoice_item.freezed.dart';
part 'invoice_item.g.dart';

@freezed
class InvoiceItem with _$InvoiceItem {
  const InvoiceItem._();

  factory InvoiceItem({
    @JsonKey(name: "Itemno") required String number,
    @JsonKey(name: "QTY") required int qty,
    required double unitPrice,
    @JsonKey(name: "ItemDesc") required String name,
    required int freeQty,
    @JsonKey(name: "SaleType") required int saleType,
  }) = _InvoiceItem;

  factory InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemFromJson(json);

  static InvoiceItem findItemById(
    String itemNo,
    List<InvoiceItem> invoiceItems,
  ) {
    return invoiceItems.firstWhere((InvoiceItem item) => item.number == itemNo);
  }

  static saleTypeToString(BuildContext context, int saleTypeInt) {
    switch (saleTypeInt) {
      case 1:
        return t(context).retail;
      case 2:
        return t(context).wholeSale;
      // case 3:
      //   return "كبار العملاء";
      case 4:
        return t(context).freePromotions;
    }
  }
}

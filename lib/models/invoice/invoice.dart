// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashael_al_qasr_5/models/invoice_item/invoice_item.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class Invoice with _$Invoice {
  factory Invoice({
    @JsonKey(name: "invno") required int number,
    @JsonKey(name: "invdate") String? date,
    @JsonKey(name: "CustName") String? customerName,
    @JsonKey(name: "customerVATno") int? customerVatNo,
    double? total,
    @JsonKey(name: "DiscountTotal") double? discountTotal,
    double? netTotal,
    @JsonKey(name: "TotAfterVAT") double? totalAfterVAT,
    @JsonKey(name: "VATamount") double? vat,
    @JsonKey(name: "PayType") String? payType,
    @JsonKey(name: "invoiceItems") List<InvoiceItem>? items,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}

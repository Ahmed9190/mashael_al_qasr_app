// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_title.freezed.dart';
part 'invoice_title.g.dart';

@freezed
class InvoiceTitle with _$InvoiceTitle {
  factory InvoiceTitle({
    @JsonKey(name: "invno") int? number,
    @JsonKey(name: "CustName") String? customerName,
    @JsonKey(name: "invdate") String? date,
  }) = _InvoiceTitle;

  factory InvoiceTitle.fromJson(dynamic json) => _$InvoiceTitleFromJson(json);
}

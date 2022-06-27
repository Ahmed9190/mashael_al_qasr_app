// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt.freezed.dart';
part 'receipt.g.dart';

@freezed
class Receipt with _$Receipt {
  factory Receipt({
    @JsonKey(name: "Recno") int? number,
    @JsonKey(name: "Amount") double? moneyAmount,
    @JsonKey(name: "AccName") String? customerName,
    @JsonKey(name: "CreatedDate") String? date,
    @JsonKey(name: "Description") String? description,
  }) = _Receipt;

  factory Receipt.fromJson(dynamic json) => _$ReceiptFromJson(json);
}

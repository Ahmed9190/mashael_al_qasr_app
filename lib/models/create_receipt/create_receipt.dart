// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_receipt.freezed.dart';
part 'create_receipt.g.dart';

@freezed
class CreateReceipt with _$CreateReceipt {
  factory CreateReceipt({
    @JsonKey(name: "userNo") int? userNo,
    @JsonKey(name: "cashAccNo") int? cashAccNo,
    @JsonKey(name: "accNo") int? customerNo,
    @JsonKey(name: "amount") double? moneyAmount,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "BranchSubno") int? branchSubno,
  }) = _CreateReceipt;

  factory CreateReceipt.fromJson(Map<String, dynamic> json) =>
      _$CreateReceiptFromJson(json);
}

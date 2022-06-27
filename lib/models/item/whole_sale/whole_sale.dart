import 'package:freezed_annotation/freezed_annotation.dart';

part 'whole_sale.freezed.dart';
part 'whole_sale.g.dart';

@freezed
class WholeSale with _$WholeSale {
  factory WholeSale({
    required int qty,
    required double price,
  }) = _WholeSale;

  factory WholeSale.fromJson(Map<String, dynamic> json) =>
      _$$_WholeSaleFromJson(json);
}

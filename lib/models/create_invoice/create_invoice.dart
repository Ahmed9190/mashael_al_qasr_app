// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashael_al_qasr_5/models/invoice_item/invoice_item.dart';
import 'package:mashael_al_qasr_5/providers/config_provider.dart';

part 'create_invoice.freezed.dart';
part 'create_invoice.g.dart';

@freezed
class CreateInvoice with _$CreateInvoice {
  const CreateInvoice._();

  factory CreateInvoice({
    @JsonKey(name: "BranchSubno") int? branchSubno,
    @JsonKey(name: "whno") int? warehouseNo,
    @JsonKey(name: "Accno") int? accNo,
    @JsonKey(name: "SaleAccno") int? saleAccountNo,
    @JsonKey(name: "AccName") String? customerName,
    @JsonKey(name: "customerVatNo") int? customerVatNo,
    @Default(0.0) double total,
    @JsonKey(name: "notes") @Default("") String notes,
    @JsonKey(name: "PayType") int? payType,
    @JsonKey(name: "Createduserno") int? createdUserNo,
    @JsonKey(name: "Custno") int? customerNo,
    @Default([]) List<InvoiceItem> items,
  }) = _CreateInvoice;

  factory CreateInvoice.fromJson(Map<String, dynamic> json) =>
      _$CreateInvoiceFromJson(json);

  int getAccountNo() {
    return payType == 3 // آجل
        ? ConfigProvider.serverConfig!.saleAccno
        : ConfigProvider.serverConfig!.cashSaleAccno;
  }
}

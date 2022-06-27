import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/components/adjustable_qty.dart';
import 'package:mashael_al_qasr_5/components/dropdown.dart';
import 'package:mashael_al_qasr_5/components/free_qty.dart';
import 'package:mashael_al_qasr_5/components/gap.dart';
import 'package:mashael_al_qasr_5/models/create_invoice_item/create_invoice_item.dart';
import 'package:mashael_al_qasr_5/models/string_with_key/string_with_key.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/show_snackbar.dart';
import 'package:mashael_al_qasr_5/utils/text_field_controller_utils.dart';

class ItemDetails extends StatefulWidget {
  final CreateInvoiceItem item;
  final void Function(SaleTypeOptions) onChangeSaleType;
  final Function(int) onChangeQty;

  const ItemDetails({
    Key? key,
    required this.item,
    required this.onChangeSaleType,
    required this.onChangeQty,
  }) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  late final TextEditingController _qtyTextFieldController;

  late final List<StringWithKey<SaleTypeOptions>> _saleTypeOptions =
      widget.item.getSaleTypeOptions(context);

  @override
  void initState() {
    super.initState();
    _qtyTextFieldController = TextEditingController();
  }

  @override
  void dispose() {
    _qtyTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CreateInvoiceItem item = widget.item;
    int qtyPerUnit = item.qtyPerUnit;
    double calculatedUnitPrice = item.calculatedUnitPrice;

    return Gap(
      space: 3,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('${t(context).saleType} : '),
            SizedBox(
              width: 138,
              child: Dropdown<StringWithKey<SaleTypeOptions>>(
                elements: _saleTypeOptions,
                onChangeValue: _onChangeSaleType,
                color: primaryColor,
                optionLabel: _optionLabel,
                value: _getSeleTypeValue(),
                label: t(context).saleType,
              ),
            ),
          ],
        ),
        Text('${t(context).availableQuantity} : ${widget.item.availableQty}'),
        if (widget.item.isWholeOrVipSale)
          Text('${t(context).quantityPerUnit} : $qtyPerUnit'),
        AdjustableQuantity(
          key: Key(item.number),
          qty: item.qty,
          isInline: true,
          qtyTextFieldController: _qtyTextFieldController,
          onChangeQty: _onChangeQty,
        ),
        if (item.isWholeOrVipSale)
          Text('${t(context).totalQuantity} : ${qtyPerUnit * item.qty}'),
        Text(
            '${t(context).unitPrice} : ${calculatedUnitPrice.toStringAsFixed(2)}'),
        Text(
          '${t(context).totalPrice} : ${item.calculateTotal.toStringAsFixed(2)}',
        ),
        if (item.saleType == SaleTypeOptions.freePromotion)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FreeQty(promotionSale: item.promotionSale!),
              Text(
                "${t(context).totalQuantity} : ${item.freeQty}",
              ),
            ],
          ),
      ],
    );
  }

  void _onChangeSaleType(
    StringWithKey<SaleTypeOptions>? saleTypeOptions,
  ) async {
    if (saleTypeOptions != null) {
      widget.onChangeSaleType(saleTypeOptions.key);
      final newCalculatedMaxQty =
          widget.item.copyWith(saleType: saleTypeOptions.key).maxQty;
      _onChangeQty(
        widget.item.qty,
        newCalculatedMaxQty,
      );
    }
  }

  void _onChangeQty(int newQty, [int? maxQty]) {
    if (newQty == widget.item.qty) return;

    maxQty = maxQty ?? widget.item.maxQty;
    final int newQtyPlusFree = newQty + widget.item.freeQty;

    if (newQtyPlusFree > maxQty) {
      int maxAvailableQtyToBuy = maxQty - widget.item.freeQty;

      newQty = maxAvailableQtyToBuy;
      showSnackBar(context, t(context).cannotExceedAvailableQuantity);
    } else if (newQty < 1) {
      newQty = 1;
      showSnackBar(context, "${t(context).cannotSpecifyQuantityLessThan} 1");
    }
    String newQtyString = newQty.toString();

    setTextControllerDynamicValue(
      controller: _qtyTextFieldController,
      newText: newQtyString,
    );

    widget.onChangeQty(newQty);
  }

  StringWithKey<SaleTypeOptions> _getSeleTypeValue() {
    return _saleTypeOptions.firstWhere(
      (option) => option.key == widget.item.saleType,
      orElse: () => _saleTypeOptions[0],
    );
  }

  String _optionLabel(StringWithKey<SaleTypeOptions> option) {
    return option.name;
  }
}

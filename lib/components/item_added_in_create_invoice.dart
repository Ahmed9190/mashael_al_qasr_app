import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/gap.dart';
import 'package:mashael_al_qasr_5/models/create_invoice_item/create_invoice_item.dart';

import 'package:mashael_al_qasr_5/screens/item/item_details.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';

class ItemAddedInCreateInvoice extends StatefulWidget {
  final CreateInvoiceItem createInvoiceItem;
  final int index;
  final void Function(int quantity, int index) onChangeQuantityByIndex;
  final void Function(SaleTypeOptions saleType, int index)
      onChangeSaleTypeByIndex;
  final void Function(int index) removeItemByIndex;
  final int maxQty;

  const ItemAddedInCreateInvoice({
    Key? key,
    required this.createInvoiceItem,
    required this.index,
    required this.onChangeQuantityByIndex,
    required this.removeItemByIndex,
    required this.onChangeSaleTypeByIndex,
    required this.maxQty,
  }) : super(key: key);

  @override
  State<ItemAddedInCreateInvoice> createState() =>
      _ItemAddedInCreateInvoiceState();
}

class _ItemAddedInCreateInvoiceState extends State<ItemAddedInCreateInvoice> {
  late TextEditingController _qtyTextFieldController;

  @override
  void initState() {
    super.initState();

    _qtyTextFieldController =
        TextEditingController(text: widget.createInvoiceItem.qty.toString());
    // List<CreateInvoiceItem> items = createInvoiceProvider.items;
    // _qtyTextFieldController = TextEditingController(
    //   text: items[widget.index].toString(),
    // );
  }

  @override
  void dispose() {
    _qtyTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: double.infinity,
      padding: const EdgeInsets.only(right: 15.0, top: 5.0, bottom: 5.0),
      child: Gap(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  widget.createInvoiceItem.name,
                  style: const TextStyle(
                    color: primaryColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
              IconButton(
                onPressed: onPressRemoveItem,
                icon: const Icon(
                  Icons.close,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Builder(builder: (context) {
            // List<CreateInvoiceItem> items = createInvoiceProvider.items;
            return ItemDetails(
              item: widget.createInvoiceItem,
              onChangeSaleType: _onChangeSaleType,
              onChangeQty: _onChangeQty,
              // qtyTextFieldController: _qtyTextFieldController,
            );
          }),
        ],
      ),
    );
  }

  _onChangeSaleType(SaleTypeOptions saleType) {
    widget.onChangeSaleTypeByIndex(saleType, widget.index);
  }

  void _onChangeQty(int qty) {
    widget.onChangeQuantityByIndex(qty, widget.index);
  }

  void onPressRemoveItem() {
    widget.removeItemByIndex(widget.index);
  }
}

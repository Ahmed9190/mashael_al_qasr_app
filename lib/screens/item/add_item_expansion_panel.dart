import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/models/create_invoice_item/create_invoice_item.dart';

import 'package:mashael_al_qasr_5/models/item/item.dart';
import 'package:mashael_al_qasr_5/screens/item/item_details.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

class AddItemExpansionPanel extends StatefulWidget {
  final Item item;
  final void Function(CreateInvoiceItem item) addItem;
  final int index;

  const AddItemExpansionPanel({
    Key? key,
    required this.item,
    required this.addItem,
    required this.index,
  }) : super(key: key);

  @override
  State<AddItemExpansionPanel> createState() => _AddItemExpansionPanelState();
}

class _AddItemExpansionPanelState extends State<AddItemExpansionPanel> {
  bool isExpanded = false;

  bool isButtonDisabled = true;

  late CreateInvoiceItem createInvoiceItem =
      CreateInvoiceItem.fromItem(item: widget.item);

  late TextEditingController _qtyTextFieldController;

  @override
  void initState() {
    super.initState();

    final bool hasNoAvailableQty = widget.item.availableQty <= 0;
    final bool hasNoSellPrice = widget.item.sellPrice <= 0;
    isButtonDisabled = hasNoAvailableQty || hasNoSellPrice;

    _qtyTextFieldController = TextEditingController();
  }

  @override
  void dispose() {
    _qtyTextFieldController.dispose();
    super.dispose();
  }

  void toggleExpansionState(int index) {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: screenPadding),
      child: ExpansionPanelList(
        expandedHeaderPadding: const EdgeInsets.all(0.0),
        children: [
          ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.item.name,
                    style: TextStyle(
                      color:
                          isButtonDisabled ? Colors.red.shade200 : primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                  Text('${t(context).itemNumber} : ${widget.item.number}'),
                ],
              );
            },
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (context) {
                  return ItemDetails(
                    item: createInvoiceItem,
                    onChangeSaleType: _onChangeSaleType,
                    onChangeQty: _onChangeQty,
                  );
                }),
                _addButton(disabled: isButtonDisabled),
              ],
            ),
            isExpanded: isExpanded,
            canTapOnHeader: true,
          ),
        ],
        elevation: 0,
        dividerColor: Colors.grey.shade200,
        animationDuration: const Duration(milliseconds: 250),
        expansionCallback: (panelIndex, isExpanded) {
          toggleExpansionState(panelIndex);
        },
      ),
    );
  }

  Widget _addButton({bool disabled = false}) {
    return OutlinedButton.icon(
      onPressed: disabled ? null : onPressAddItem,
      icon: const Icon(
        Icons.add,
        size: 20,
      ),
      label: Text(
        t(context).add,
        style: const TextStyle(height: 1.2, fontSize: 16.0),
      ),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        primary: Colors.greenAccent[400],
        onSurface: Colors.grey,
        side: BorderSide(
          color: disabled ? Colors.grey.shade300 : Colors.greenAccent.shade400,
          width: 0.9,
        ),
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
    );
  }

  void onPressAddItem() {
    widget.addItem(createInvoiceItem);
    Navigator.of(context).pop();
  }

  void _onChangeSaleType(SaleTypeOptions saleType) {
    _changeCreateInvoiceItem(saleType: saleType);
    setState(() {}); // to rerender total qty
  }

  void _onChangeQty(int qty) {
    _changeCreateInvoiceItem(qty: qty);
  }

  void _changeCreateInvoiceItem({
    SaleTypeOptions? saleType,
    int? qty,
  }) {
    createInvoiceItem = createInvoiceItem.copyWith(
      saleType: saleType ?? createInvoiceItem.saleType,
      qty: qty ?? createInvoiceItem.qty,
    );
    setState(() {});
  }
}

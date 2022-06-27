import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mashael_al_qasr_5/components/inputs/input.dart';

import 'package:mashael_al_qasr_5/utils/color_palettes.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/regexp.dart';

class AdjustableQuantity extends StatefulWidget {
  final TextEditingController qtyTextFieldController;
  final int qty;
  final Function(int) onChangeQty;
  final bool isInline;

  const AdjustableQuantity({
    Key? key,
    required this.qtyTextFieldController,
    required this.qty,
    this.isInline = false,
    required this.onChangeQty,
  }) : super(key: key);

  @override
  State<AdjustableQuantity> createState() => _AdjustableQuantityState();
}

class _AdjustableQuantityState extends State<AdjustableQuantity> {
  @override
  void initState() {
    super.initState();
    _initializeQtyTextField();
    // qtyFocusNode = FocusNode();
    widget.qtyTextFieldController.addListener(_onChangeQtyTextField);
  }

  void _initializeQtyTextField() {
    if (widget.qtyTextFieldController.text == "") {
      widget.qtyTextFieldController.text = widget.qty.toString();
    }
  }

  void _onChangeQtyTextField() {
    if (widget.qtyTextFieldController.text.contains(digitsRegExp)) {
      int newQty = int.parse(widget.qtyTextFieldController.text);
      widget.onChangeQty(newQty);
    }
  }

  @override
  void dispose() {
    widget.qtyTextFieldController.removeListener(_onChangeQtyTextField);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isInline
        ? renderInlineAdjustableQty()
        : Column(
            children: [
              Text("${t(context).quantity} : "),
              renderAdjustableQty(),
            ],
          );
  }

  Widget renderInlineAdjustableQty() {
    return Row(
      children: [
        Text("${t(context).quantity} : "),
        renderAdjustableQty(),
      ],
    );
  }

  Widget renderAdjustableQty() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: primaryColor),
              ),
            ),
            child: IconButton(
              constraints: const BoxConstraints(),
              iconSize: 18.0,
              onPressed: handleClickAddQty,
              icon: const Icon(
                Icons.add,
              ),
            ),
          ),
          SizedBox(
            width: 50.0,
            // height: 30.0,
            child: Input(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ],
              controller: widget.qtyTextFieldController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              label: t(context).quantity,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
              ),
              color: ColorPalette.darkColor,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(color: primaryColor),
              ),
            ),
            child: IconButton(
              constraints: const BoxConstraints(),
              iconSize: 18.0,
              onPressed: handleClickSubtraceQty,
              icon: const Icon(
                Icons.remove,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void handleClickAddQty() =>
      widget.onChangeQty(int.parse(widget.qtyTextFieldController.text) + 1);

  void handleClickSubtraceQty() =>
      widget.onChangeQty(int.parse(widget.qtyTextFieldController.text) - 1);
}

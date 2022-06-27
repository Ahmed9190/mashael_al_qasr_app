import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/models/item/promotion_sale/promotion_sale.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

class FreeQty extends StatelessWidget {
  final PromotionSale promotionSale;
  const FreeQty({
    Key? key,
    required this.promotionSale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('${t(context).theFreeQuantity} : ${t(context).per} '),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(7.5)),
          ),
          child: Text(promotionSale.qtyReq!.toString()),
        ),
        Text(' ${t(context).freeQuantity} '),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(7.5)),
          ),
          child: Text(promotionSale.qtyFree!.toString()),
        ),
      ],
    );
  }
}

import "package:flutter/material.dart";
import "package:mashael_al_qasr_5/models/invoice_item/invoice_item.dart";
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

class ItemsInfoTable extends StatefulWidget {
  final List<InvoiceItem> items;

  const ItemsInfoTable({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<ItemsInfoTable> createState() => _ItemsInfoTableState();
}

class _ItemsInfoTableState extends State<ItemsInfoTable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.items.map(
        (InvoiceItem item) {
          return Column(
            children: [
              Table(
                contentText: item.number,
                title: "رقم الصنف",
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
                child: Table(
                  contentText: item.name,
                  title: "اسم الصنف",
                ),
              ),
              Table(
                contentText:
                    InvoiceItem.saleTypeToString(context, item.saleType),
                title: "نوع البيع",
              ),
              Table(
                contentText: item.unitPrice.toStringAsFixed(2),
                title: "السعر",
              ),
              Table(
                contentText: (item.qty - item.freeQty).toString(),
                title: "الكمية",
              ),
              if (item.freeQty != 0)
                Table(
                  contentText: item.freeQty.toString(),
                  title: t(context).theFreeQuantity,
                ),
              Table(
                contentText: (item.unitPrice * item.qty).toStringAsFixed(2),
                title: "الإجمالي",
              ),
              const Divider(
                height: 20.0,
                color: ColorPalette.darkColor,
                thickness: 2.0,
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}

class Table extends StatelessWidget {
  final String title;
  final String contentText;
  const Table({
    Key? key,
    required this.title,
    required this.contentText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Expanded(
          child: Text(contentText, textAlign: TextAlign.left),
        ),
      ],
    );
  }
}

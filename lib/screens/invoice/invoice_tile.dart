import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/custom_list_tile.dart';
import 'package:mashael_al_qasr_5/models/invoice/invoice.dart';
import 'package:mashael_al_qasr_5/models/invoice_title/invoice_title.dart';
import 'package:mashael_al_qasr_5/screens/print_invoice_screen.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

class InvoiceTile extends StatelessWidget {
  final InvoiceTitle invoiceTitle;

  const InvoiceTile(this.invoiceTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: invoiceTitle.customerName!,
      subtitle: "${t(context).number}: ${invoiceTitle.number}",
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PrintInvoiceScreen(
              invoice: Invoice(number: invoiceTitle.number!),
            ),
          ),
        );
      },
      trailing: invoiceTitle.date!,
    );
  }
}

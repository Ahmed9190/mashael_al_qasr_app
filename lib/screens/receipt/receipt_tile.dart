import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/custom_list_tile.dart';
import 'package:mashael_al_qasr_5/models/receipt/receipt.dart';
import 'package:mashael_al_qasr_5/screens/receipt/print_receipt_screen.dart';
import 'package:mashael_al_qasr_5/utils/custom_datetime.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

class ReceiptTile extends StatelessWidget {
  final Receipt receipt;

  const ReceiptTile(this.receipt, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: receipt.customerName!,
      subtitle: "${t(context).number}: ${receipt.number}",
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PrintReceiptScreen(
              receipt: Receipt(
                number: receipt.number!,
                customerName: receipt.customerName,
                date: receipt.date,
                moneyAmount: receipt.moneyAmount,
              ),
            ),
          ),
        );
      },
      trailing: CustomDateTime.getDateString(receipt.date!),
    );
  }
}

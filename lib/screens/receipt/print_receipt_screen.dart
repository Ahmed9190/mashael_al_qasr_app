import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/screens/print_paper_screen.dart';
import 'package:mashael_al_qasr_5/components/print_paper_header.dart';
import 'package:mashael_al_qasr_5/models/receipt/receipt.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/custom_datetime.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/tafqeet.util.dart';

class PrintReceiptScreen extends StatefulWidget {
  final Receipt receipt;
  final bool autoPrint;

  const PrintReceiptScreen({
    Key? key,
    required this.receipt,
    this.autoPrint = false,
  }) : super(key: key);

  @override
  State<PrintReceiptScreen> createState() => _PrintReceiptScreenState();
}

class _PrintReceiptScreenState extends State<PrintReceiptScreen> {
  Receipt? _receipt;
  @override
  void initState() {
    super.initState();
    fetchDescription();
  }

  Future<void> fetchDescription() async {
    _receipt = await Api.get("/receipt/${widget.receipt.number}",
        fromJson: Receipt.fromJson);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final String userName = UserProvider.user!.userName;
    late Widget child;

    if (_receipt != null) {
      final Map<String, String> data = {
        "رقم السند": _receipt!.number.toString(),
        "اسم العميل": _receipt!.customerName!,
        "المبلغ": _receipt!.moneyAmount!.toStringAsFixed(2),
        "المبلغ بالحروف":
            CustomTafqeet.double(widget.receipt.moneyAmount!).getAsCurrency(),
        "اسم المندوب": userName,
        "تاريخ الإنشاء":
            CustomDateTime.getDateAndTimeString(widget.receipt.date),
        "تاريخ الطباعة": CustomDateTime.getDateAndTimeString(
            CustomDateTime.nowWithTimeZoneOffset()),
        "البيان": _receipt!.description!,
      };
      child = PrintPaperHeader(data: data);
    } else {
      child = const CircularProgressIndicator();
    }
    return PrintPaper(
      autoPrint: widget.autoPrint,
      fileName: "سند قبض ${widget.receipt.customerName}${DateTime.now()}",
      pageTitle: t(context).receipt,
      title: "سند قبض",
      child: child,
    );
  }
}

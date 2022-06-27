import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/items_info_table.dart';
import 'package:mashael_al_qasr_5/screens/print_paper_screen.dart';
import 'package:mashael_al_qasr_5/components/print_paper_header.dart';
import 'package:mashael_al_qasr_5/components/print_paper_summary.dart';
import 'package:mashael_al_qasr_5/components/tafqeet.dart';
import 'package:mashael_al_qasr_5/models/invoice/invoice.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/custom_datetime.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/qr.dart';
import 'package:mashael_al_qasr_5/utils/show_snackbar.dart';

class PrintInvoiceScreen extends StatefulWidget {
  final bool autoPrint;
  final Invoice invoice;

  const PrintInvoiceScreen({
    Key? key,
    required this.invoice,
    this.autoPrint = false,
  }) : super(key: key);

  @override
  State<PrintInvoiceScreen> createState() => _PrintInvoiceScreenState();
}

class _PrintInvoiceScreenState extends State<PrintInvoiceScreen> {
  late Invoice _invoice = widget.invoice;

  @override
  void initState() {
    super.initState();
    getInitInvoiceDetails();
  }

  Future<void> getInitInvoiceDetails() async {
    try {
      _invoice = await Api.get<Invoice>(
        "/invoice/${_invoice.number}",
        fromJson: Invoice.fromJson,
      );
      setState(() {});
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      Navigator.pop(context);
      showSnackBar(context, t(context).errorWhileLoadingInvoice);
    }
  }

  @override
  Widget build(BuildContext context) {
    {
      if (_invoice.total == null) return _renderLoading();

      final String userName = UserProvider.user!.userName;

      return PrintPaper(
        autoPrint: widget.autoPrint,
        fileName:
            "${t(context).invoice} ${_invoice.customerName}${DateTime.now()}",
        pageTitle: t(context).invoice,
        title: 'فاتورة مبيعات ضريبية',
        child: Column(
          children: [
            PrintPaperHeader(
              data: {
                "رقم الفاتورة": _invoice.number.toString(),
                "تاريخ الإنشاء":
                    CustomDateTime.getDateAndTimeString(_invoice.date),
                "تاريخ الطباعة": CustomDateTime.getDateAndTimeString(
                    CustomDateTime.nowWithTimeZoneOffset()),
                "نوع الدفع": _invoice.payType!,
                "اسم العميل": _invoice.customerName!,
                "المندوب": userName,
              },
            ),
            Divider(
              height: 20.0,
              color: Theme.of(context).primaryColorDark,
              thickness: 2.0,
            ),
            ItemsInfoTable(items: _invoice.items!),
            const SizedBox(
              height: 10.0,
            ),
            PrintPaperSummary(
              data: {
                "الإجمالي": _invoice.total!.toStringAsFixed(2),
                // "الخصم": "0.0",
                // "الصافي": _invoice.total!.toStringAsFixed(2),
                "ضريبة القيمة المضافة": _invoice.vat!.toStringAsFixed(2),
                "قيمة الفاتورة": _invoice.totalAfterVAT!.toStringAsFixed(2),
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            TafqeetText(number: _invoice.totalAfterVAT!),
            const SizedBox(
              height: 20.0,
            ),
            BarcodeWidget(
              barcode: Barcode.qrCode(),
              data: QR(
                invoiceAmount: _invoice.totalAfterVAT!,
                vatAmount: _invoice.vat!,
              ).getQRString(),
              // prepareQr(_invoice),
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 0.7,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "الرجاء إحضار الفاتورة عند الاسترجاع او الاستبدال خلال أسبوع",
            )
          ],
        ),
      );
    }
  }

  _renderLoading() {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: const CircularProgressIndicator(color: primaryColor),
        ),
      ),
    );
  }
}

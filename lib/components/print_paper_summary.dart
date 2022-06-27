import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/invoice_details_prices.dart';

class PrintPaperSummary extends StatelessWidget {
  final Map<String, String> data;

  const PrintPaperSummary({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...data.entries
            .toList()
            .map(
              (MapEntry<String, String> mapEntry) => InvoiceDetailsPrices(
                description: mapEntry.value,
                title: mapEntry.key,
              ),
            )
            .toList()
      ],
    );
  }
}

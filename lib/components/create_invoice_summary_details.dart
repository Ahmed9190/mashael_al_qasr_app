import 'package:flutter/material.dart';

class CreateInvoiceSummaryDetails extends StatelessWidget {
  const CreateInvoiceSummaryDetails({
    Key? key,
    required this.title,
    required this.result,
  }) : super(key: key);
  final String title;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20.0, color: Colors.black87),
        ),
        Text(
          result,
          style: const TextStyle(fontSize: 20.0, color: Colors.black87),
        ),
      ],
    );
  }
}

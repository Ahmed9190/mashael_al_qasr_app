import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/top_text_info.dart';

class PrintPaperHeader extends StatelessWidget {
  final Map<String, String> data;

  const PrintPaperHeader({
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
              (MapEntry<String, String> mapEntry) => TopTextInvoice(
                defination: mapEntry.key,
                data: mapEntry.value,
              ),
            )
            .toList()
      ],
    );
  }
}

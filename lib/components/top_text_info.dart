import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';

class TopTextInvoice extends StatelessWidget {
  final String defination;
  final String data;

  const TopTextInvoice({
    Key? key,
    required this.defination,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$defination :  ",
            style: const TextStyle(
              fontSize: 18.0,
              color: ColorPalette.darkColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              data,
              style: const TextStyle(
                fontSize: 18.0,
                color: ColorPalette.darkColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/tafqeet.util.dart';

class TafqeetText extends StatefulWidget {
  final double number;

  const TafqeetText({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  State<TafqeetText> createState() => _TafqeetTextState();
}

class _TafqeetTextState extends State<TafqeetText> {
  String priceText = "";

  @override
  void initState() {
    super.initState();
    getTafqeet();
  }

  void getTafqeet() {
    CustomTafqeet tafqeet = CustomTafqeet.double(widget.number);
    priceText = tafqeet.getAsCurrency();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "$priceText ${t(context).price_only}",
      style: const TextStyle(
        color: ColorPalette.darkColor,
        fontSize: 17,
      ),
    );
  }
}

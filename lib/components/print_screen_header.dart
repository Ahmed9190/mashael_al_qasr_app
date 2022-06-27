import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';

import 'package:mashael_al_qasr_5/utils/constants.dart';

class PrintScreenHeader extends StatelessWidget {
  final String companyName;
  final int vatNo;
  final String title;
  final bool isColored;

  const PrintScreenHeader({
    Key? key,
    required this.companyName,
    required this.vatNo,
    required this.title,
    this.isColored = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: ColorPalette.darkColor,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const Text(
                  CompnayData.nameArAndEn,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: ColorPalette.darkColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Text(
                'الرقم الضريبي : ${CompnayData.vatNo}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: ColorPalette.darkColor,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: ColorPalette.darkColor,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: ColorPalette.darkColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SvgPicture.asset(
          'assets/images/logo-grayscale.svg',
          semanticsLabel: 'logo',
          width: 100,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';

void showSnackBar(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        msg,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.white),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: ColorPalette.darkColor,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';

class ClearFilterIconButton extends StatelessWidget {
  final void Function() onPressed;
  final EdgeInsets? padding;

  const ClearFilterIconButton({
    Key? key,
    required this.onPressed,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(8.0),
          child: const Icon(
            Icons.close,
            color: ColorPalette.redColor,
            size: 20.0,
          ),
        ),
      ),
    );
  }
}

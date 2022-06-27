import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';

class ClearFilter extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const ClearFilter({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
      ),
      height: 41,
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Text(title,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: ColorPalette.darkColor,
                )),
            const Icon(
              Icons.clear,
              size: 20,
              color: ColorPalette.darkColor,
            ),
          ],
        ),
      ),
    );
  }
}

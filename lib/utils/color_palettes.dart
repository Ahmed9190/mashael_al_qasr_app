import 'package:flutter/material.dart';

class ColorPalette {
  static const MaterialColor primary = MaterialColor(
    0xff16a085, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff73c6b6), //10%
      100: Color(0xff5cbdaa), //20%
      200: Color(0xff45b39d), //30%
      300: Color(0xff2daa91), //40%
      400: Color(0xff16a085), //50%
      500: Color(0xff149078), //60%
      600: Color(0xff12806a), //70%
      700: Color(0xff0f705d), //80%
      800: Color(0xff0d6050), //90%
      900: Color(0xff0b5043), //100%
    },
  );
  static const darkColor = Color(0xff3d3d3d);
  static const redColor = Color.fromARGB(255, 223, 91, 77);
  static const greenColor = Color(0xff2ecc71);
}

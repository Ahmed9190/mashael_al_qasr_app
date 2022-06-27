import 'dart:math';

class RandomCustom {
  static String string(int length) {
    return String.fromCharCodes(
      List.generate(length, (index) => Random().nextInt(33) + 89),
    );
  }
}

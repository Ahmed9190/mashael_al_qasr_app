import 'package:number_to_word_arabic/number_to_word_arabic.dart';

class CustomTafqeet {
  int _integerNumber = 0;
  int _decimalNumber = 0;

  CustomTafqeet.double(double fullNumber) {
    _integerNumber = fullNumber.toInt();
    _decimalNumber = int.parse(
        (fullNumber - _integerNumber).toStringAsFixed(2).substring(2));
  }

  CustomTafqeet.string(String fullNumber) {
    final List<String> splittedNumber = fullNumber.split(".");
    _integerNumber = int.parse(splittedNumber[0]);
    _decimalNumber = int.parse(splittedNumber[1]);
  }

  String getIntegerNumber() {
    return Tafqeet.convert(_integerNumber.toString());
  }

  String getDecimalNumber() {
    return Tafqeet.convert(_decimalNumber.toString());
  }

  String getAsCurrency() {
    String rial = "${getIntegerNumber()} ريال";
    String halala = "${getDecimalNumber()} هللة";
    return "$rial و $halala";
  }
}

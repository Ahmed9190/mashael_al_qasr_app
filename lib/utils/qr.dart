import 'dart:convert';
import 'dart:typed_data';

import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/custom_datetime.dart';

class QR {
  BytesBuilder bytesBuilder = BytesBuilder();
  int byteNumber = 1;

  QR({required double invoiceAmount, required double vatAmount}) {
    addByte(CompnayData.nameAr);
    addByte(CompnayData.vatNo.toString());
    addByte(CustomDateTime.nowWithTimeZoneOffset().toString());
    addByte(invoiceAmount.toStringAsFixed(2));
    addByte(vatAmount.toStringAsFixed(2));
  }

  void addByte(String data) {
    bytesBuilder.addByte(byteNumber++);

    List<int> bytes = utf8.encode(data);
    bytesBuilder.addByte(bytes.length);
    bytesBuilder.add(bytes);
  }

  String getQRString() {
    Uint8List bytes = bytesBuilder.toBytes();
    const Base64Encoder encoder = Base64Encoder();
    return encoder.convert(bytes);
  }
}

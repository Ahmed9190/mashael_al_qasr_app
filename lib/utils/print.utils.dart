import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:typed_data';
import 'dart:ui';

import 'package:printing/printing.dart';

Future<Map<String, double>> getPrintDimensions(Uint8List bytes) async {
  final codec = await instantiateImageCodec(bytes);
  final frameInfo = await codec.getNextFrame();
  final currentWidth = frameInfo.image.width;
  final currentHeight = frameInfo.image.height;
  final double ratio = currentHeight / currentWidth;
  const double newWidth = 300.0;
  final double newHeight = newWidth * ratio;

  return <String, double>{"width": newWidth, "height": newHeight};
}

void printPDF(Uint8List bytes, String fileName) async {
  final doc = pw.Document();
  final image = pw.MemoryImage(bytes);
  final paperDimensions = await getPrintDimensions(bytes);

  final String imageFileName = '$fileName.pdf'.replaceAll("/", "-");
  doc.addPage(
    pw.Page(
      pageFormat:
          PdfPageFormat(paperDimensions["width"]!, paperDimensions["height"]!),
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Image(image),
        );
      },
    ),
  );
  await Printing.sharePdf(bytes: await doc.save(), filename: imageFileName);
}

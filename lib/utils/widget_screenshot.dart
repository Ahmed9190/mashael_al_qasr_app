import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Future<Uint8List?> widgetScreenshotCapture(GlobalKey? key) async {
  if (key == null) return null;
  final RenderRepaintBoundary boundary =
      key.currentContext!.findRenderObject()! as RenderRepaintBoundary;

  if (kDebugMode && boundary.debugNeedsPaint) {
    await Future.delayed(const Duration(milliseconds: 20));
    return widgetScreenshotCapture(key);
  } else {
    await Future.delayed(const Duration(milliseconds: 200));
  }
  final image = await boundary.toImage(pixelRatio: 3);
  final byteData = await image.toByteData(format: ImageByteFormat.png);
  final pngBytes = byteData?.buffer.asUint8List();

  return pngBytes;
}

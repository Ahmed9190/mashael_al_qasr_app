import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_and_dimensions.freezed.dart';

@freezed
class PositionAndDimensions with _$PositionAndDimensions {
  factory PositionAndDimensions({
    required double x,
    required double y,
    required double width,
    required double height,
  }) = _PositionAndDimensions;

  factory PositionAndDimensions.fromRenderBox(RenderBox renderBox) {
    double width = renderBox.size.width;
    double height = renderBox.size.height;

    Offset offset = renderBox.localToGlobal(Offset.zero);
    double x = offset.dx;
    double y = offset.dy;

    return PositionAndDimensions(height: height, width: width, x: x, y: y);
  }
}

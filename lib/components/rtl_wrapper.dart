import 'package:flutter/material.dart';

class RtlWrapper extends StatelessWidget {
  final Widget child;
  const RtlWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: child,
    );
  }
}

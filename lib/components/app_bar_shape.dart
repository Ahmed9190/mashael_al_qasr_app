import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/clippers/app_bar_clipper.dart';

class AppBarShape extends StatelessWidget {
  final Color customAppBarColor;
  final Widget? child;

  const AppBarShape({
    Key? key,
    required this.customAppBarColor,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppBarClipper(),
      child: Container(
        height: 200.0,
        decoration: BoxDecoration(
          color: customAppBarColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: child,
        ),
      ),
    );
  }
}

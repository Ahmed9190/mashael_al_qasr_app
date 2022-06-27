import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenBackground extends StatelessWidget {
  final Widget child;
  const SplashScreenBackground({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/SVG/shape1.svg',
              width: size.width * 0.5,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/SVG/shape2.svg',
              width: size.width * 0.2,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/SVG/shape3.svg',
              width: size.width * 0.4,
              color: Theme.of(context).primaryColor,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

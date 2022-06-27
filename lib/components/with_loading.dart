import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/utils/constants.dart';

class WithLoading extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final Color color;

  const WithLoading({
    Key? key,
    required this.child,
    required this.isLoading,
    this.color = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            color: Colors.black38,
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ),
          )
      ],
    );
  }
}

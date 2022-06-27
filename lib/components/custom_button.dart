import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonColors,
    required this.textColors,
    required this.label,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  final Color buttonColors;
  final Color textColors;
  final IconData? icon;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: buttonColors,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: textColors, width: 2.0),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: textColors,
          textStyle: const TextStyle(
            fontSize: 18.0,
            letterSpacing: 1.5,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  icon,
                  size: 30,
                  color: textColors,
                ),
              ),
            Text(
              label,
              style: TextStyle(color: textColors, height: 1.65),
            ),
          ],
        ),
      ),
    );
  }
}

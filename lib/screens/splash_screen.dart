import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/components/splash_screen_background_component.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

class SplashScreen extends StatelessWidget {
  final String? title;
  final String imagePath;

  const SplashScreen({
    Key? key,
    this.title,
    this.imagePath = "assets/images/logo.png",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  right: screenPadding,
                  left: screenPadding,
                ),
                child: Text(
                  title ?? t(context).companyName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 25.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}

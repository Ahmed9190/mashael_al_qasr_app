import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/components/with_loading.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

class SignInWrapper extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  const SignInWrapper({
    Key? key,
    required this.child,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: WithLoading(
        isLoading: isLoading,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: screenSize.height,
            width: double.infinity,
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
                    child: Image.asset(
                      'assets/images/signInImage.png',
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Transform(
                          transform: Matrix4.skew(-0.05, -0.22),
                          origin: Offset(screenSize.width, screenSize.height),
                          child: Container(
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.33),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25.0),
                                topRight: Radius.circular(50),
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          top: 25,
                          child: Transform(
                            transform: Matrix4.skew(-0.025, -0.22),
                            origin: Offset(screenSize.width, screenSize.height),
                            child: Container(
                              decoration: BoxDecoration(
                                color: primaryColor.withOpacity(0.66),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          top: 50,
                          child: Transform(
                            transform: Matrix4.skewY(-0.22),
                            origin: Offset(screenSize.width, screenSize.height),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: screenPadding,
                          ),
                          //TODO: next SingleChildScrollView added bacause of testing, so make sure it doesn't negatively effect the app
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 75.0),
                                Text(
                                  t(context).signIn,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width: 50,
                                      height: 1.75,
                                    ),
                                    Container(
                                      color: Colors.white,
                                      width: 100,
                                      height: 1.75,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      width: 100,
                                      height: 1.75,
                                    ),
                                    const SizedBox(
                                      width: 50,
                                      height: 1.75,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 25),
                                child,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

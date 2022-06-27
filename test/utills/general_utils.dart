import 'package:flutter/material.dart';
// import 'package:mashael_al_qasr_5/screens/main_screen.dart' as ms;
// import 'package:mashael_al_qasr_5/services/user_service.dart';
import 'package:mocktail/mocktail.dart';

class NavigatorObserverMock extends Mock implements NavigatorObserver {}

class RouteFake extends Fake implements Route {}

class GeneralTestingUtils {
  static arrangeDidPush(NavigatorObserverMock navigatorObserverMock) {
    when(() => navigatorObserverMock.didPush(any(), any()))
        .thenAnswer((_) async {});
  }
//   static Widget MainScreen({
//     required Widget child,
//     required UserService userServiceMock,
//     required navigatorObservers,
//   }) {
//     return ms.MainScreen(
//       userService: userServiceMock,
//       navigatorObservers: navigatorObservers ?? [],
//       child: child,
//     );
//   }
}

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mashael_al_qasr_5/models/user_sign_in/user_sign_in.dart';
import 'package:mocktail/mocktail.dart';

import '../../utills/general_utils.dart';
import '../../utills/user_testing_utils.dart';

void main() {
  late UserServiceMock userServiceMock;
  late NavigatorObserverMock navigatorObserverMock;

  setUp(() {
    registerFallbackValue(UserSignInFake());
    registerFallbackValue(RouteFake());

    userServiceMock = UserServiceMock();
    navigatorObserverMock = NavigatorObserverMock();
  });

  tearDown(() {
    SchedulerBinding.instance.resetEpoch();
  });

  group("sign in screen", () {
    const Key userNumberInputKey = Key("user number input");
    const Key passwordInputKey = Key("password input");
    const Key signInButtonKey = Key("sign in button");

    UserSignIn userSignIn = UserSignIn(userNo: "6", password: "6ascsac");

    Future<void> enterUserNumber(WidgetTester tester, String userNumber) async {
      await tester.enterText(find.byKey(userNumberInputKey), userNumber);
    }

    Future<void> enterPassword(WidgetTester tester, String password) async {
      await tester.enterText(find.byKey(passwordInputKey), password);
    }

    Future<void> tapSignInButton(WidgetTester tester) async {
      await tester.tap(find.byKey(signInButtonKey), warnIfMissed: false);
    }

    Future fillInSignInDataAndSubmit(
        WidgetTester tester, UserSignIn userSignIn) async {
      if (!userSignIn.isDataExists) {
        throw "User number and password is not exists";
      }

      await enterUserNumber(tester, userSignIn.userNo!);
      await tester.pump();
      await enterPassword(tester, userSignIn.password!);
      await tester.pump();
      await tapSignInButton(tester);
      await tester.pump();
    }

    testWidgets(
        '(Given) user in sign in screen (When) user enters data (Then) show loading',
        (WidgetTester tester) async {
      //arrange
      UserTestingUtils.arrangeUserServiceReturnsUserAfter2Seconds(
        userServiceMock,
      );
      await tester.pumpWidget(
        UserTestingUtils.createSignInScreenWidgetUnderTest(userServiceMock),
      );

      //act
      await fillInSignInDataAndSubmit(tester, userSignIn);

      //assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      await tester.pumpAndSettle();
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });

    testWidgets(
        '(Given) user in sign in screen (When) user enters correct data (Then) navigate to another screen',
        (WidgetTester tester) async {
      //given
      UserTestingUtils.arrangeUserServiceReturnsUser(
        userServiceMock,
      );
      GeneralTestingUtils.arrangeDidPush(navigatorObserverMock);

      await tester.pumpWidget(
        UserTestingUtils.createSignInScreenWidgetUnderTest(
          userServiceMock,
          [navigatorObserverMock],
        ),
      );

      //when
      await fillInSignInDataAndSubmit(tester, userSignIn);

      //then
      verify(() => navigatorObserverMock.didPush(any(), any())).called(1);
      await tester.pumpAndSettle();
    });

    testWidgets(
        '(Given) user in sign in screen (When) user enters incorrect data (Then) show snackbar',
        (WidgetTester tester) async {
      //given
      UserTestingUtils.arrangeUserServiceReturnsErrorAfter2Seconds(
        userServiceError: UserServiceErrors.incorrectCredentials,
        userServiceMock: userServiceMock,
      );
      GeneralTestingUtils.arrangeDidPush(navigatorObserverMock);

      await tester.pumpWidget(
        UserTestingUtils.createSignInScreenWidgetUnderTest(userServiceMock),
      );
      //when
      await fillInSignInDataAndSubmit(tester, userSignIn);
      // then
      expect(
        () => userServiceMock.signIn(userSignIn),
        throwsA(isA<ErrorDescription>()),
      );
      await tester.pump();
      expect(
        find.text(UserTestingUtils.incorrectCredentialsMessage),
        findsOneWidget,
      );
      await tester.pumpAndSettle();
      await tester.pumpAndSettle(const Duration(seconds: 4));
      expect(
        find.text(UserTestingUtils.incorrectCredentialsMessage),
        findsNothing,
      );
    });
  });
}

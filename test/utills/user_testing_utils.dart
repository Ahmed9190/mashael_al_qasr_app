import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/models/user/user.dart';
import 'package:mashael_al_qasr_5/models/user_sign_in/user_sign_in.dart';
import 'package:mashael_al_qasr_5/screens/main_screen.dart';
import 'package:mashael_al_qasr_5/screens/sign_in/sign_in_screen.dart';
import 'package:mashael_al_qasr_5/services/user_service.dart';
import 'package:mocktail/mocktail.dart';

enum UserServiceErrors {
  incorrectCredentials,
  unexpected,
}

class UserServiceMock extends Mock implements UserService {}

class UserSignInFake extends Fake implements UserSignIn {}

class UserTestingUtils {
  static User user = User(
    userNo: 6,
    userName: "المندوب جلال",
    branchSubNo: 400,
    storeNo: 50,
    cashAccNo: 110106001,
    saleAccountNo: 214124,
    token: "eyJ0eXAiOiJKV1QiLCJ==",
  );

  static String incorrectCredentialsMessage = "من فضلك تأكد من صحة البيانات";
  static String unexpectedErrorMessage = "حدث خطأ ما. أعد المحاولة من فضلك";

  static UserSignIn userSignIn = UserSignIn(userNo: "6", password: "6");

  static Widget createSignInScreenWidgetUnderTest(
    UserServiceMock userServiceMock, [
    List<NavigatorObserver>? navigatorObserver,
  ]) {
    return MainScreen(
      userService: userServiceMock,
      // navigatorObservers: navigatorObserver,
      child: const SignInScreen(),
    );
  }

  static void arrangeUserServiceReturnsUser(UserServiceMock userServiceMock) {
    when(() => userServiceMock.signIn(any())).thenAnswer((_) async {
      return user;
    });
  }

  static void arrangeUserServiceReturnsUserAfter2Seconds(
    UserServiceMock userServiceMock,
  ) {
    when(() => userServiceMock.signIn(any())).thenAnswer((_) async {
      await Future.delayed(const Duration(seconds: 2));
      return user;
    });
  }

  static void arrangeUserServiceReturnsErrorAfter2Seconds({
    required UserServiceMock userServiceMock,
    required UserServiceErrors userServiceError,
  }) {
    when(() => userServiceMock.signIn(any())).thenAnswer((_) async {
      throw _throwError(userServiceError);
    });
  }

  static void arrangeUserServiceReturnsError({
    required UserServiceMock userServiceMock,
    required UserServiceErrors userServiceError,
  }) {
    when(() => userServiceMock.signIn(any()))
        .thenThrow(_throwError(userServiceError));
  }

  static ErrorDescription _throwError(UserServiceErrors userServiceError) {
    if (userServiceError == UserServiceErrors.incorrectCredentials) {
      return ErrorDescription(incorrectCredentialsMessage);
    }
    return ErrorDescription(unexpectedErrorMessage);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mocktail/mocktail.dart';

import '../utills/user_testing_utils.dart';

void main() {
  late UserProvider sut;
  late UserServiceMock userServiceMock;

  setUp(() {
    registerFallbackValue(UserSignInFake());

    userServiceMock = UserServiceMock();
    sut = UserProvider(userServiceMock);
    UserProvider.user = null;
  });

  test("UserProvider initial values are correct", () {
    expect(sut.apiStatus, ApiStatus.initial);
    expect(UserProvider.user, null);
  });

  group('User provider', () {
    test('sign in success', () async {
      //arrange
      UserTestingUtils.arrangeUserServiceReturnsUser(userServiceMock);
      // act
      Future<void> futureSignIn =
          sut.signInAndAppendToken(UserTestingUtils.userSignIn);
      expect(sut.apiStatus, ApiStatus.loading);

      await futureSignIn;

      // assert
      expect(sut.apiStatus, ApiStatus.loaded);
      expect(UserProvider.user, isNotNull);

      verify(() => userServiceMock.signIn(UserTestingUtils.userSignIn))
          .called(1);
    });

    test("sign in wrong entered data", () async {
      //arrange
      UserTestingUtils.arrangeUserServiceReturnsError(
        userServiceError: UserServiceErrors.incorrectCredentials,
        userServiceMock: userServiceMock,
      );
      // act
      Future<void> futureSignIn =
          sut.signInAndAppendToken(UserTestingUtils.userSignIn);
      expect(sut.apiStatus, ApiStatus.loading);

      //TODO: it doesn't enter catchError function
      futureSignIn.then((value) {}).catchError((e) {
        // assert
        expect(() => futureSignIn, throwsA(isA<ErrorDescription>()));
        if (e is ErrorDescription) {
          String description = e.toDescription();
          expect(description, "من فضلك تأكد من صحة البيانات");
        }

        expect(sut.apiStatus, ApiStatus.error);
        expect(UserProvider.user, null);
        expect(e.toDescription(), "من فضلك تأكد من صحة البيانات");

        verify(() => userServiceMock.signIn(UserTestingUtils.userSignIn))
            .called(1);
      });
    });

    test("sign in unexpected error", () async {
      //arrange
      UserTestingUtils.arrangeUserServiceReturnsError(
        userServiceError: UserServiceErrors.unexpected,
        userServiceMock: userServiceMock,
      );
      // act
      Future<void> futureSignIn =
          sut.signInAndAppendToken(UserTestingUtils.userSignIn);
      expect(sut.apiStatus, ApiStatus.loading);

      futureSignIn.then((value) {}).catchError((e) {
        // assert
        expect(() => futureSignIn, throwsA(isA<ErrorDescription>()));
        if (e is ErrorDescription) {
          String description = e.toDescription();
          expect(description, UserTestingUtils.unexpectedErrorMessage);
        }

        expect(sut.apiStatus, ApiStatus.error);
        expect(UserProvider.user, null);
        expect(e.toDescription(), UserTestingUtils.unexpectedErrorMessage);

        verify(() => userServiceMock.signIn(UserTestingUtils.userSignIn))
            .called(1);
      });
    });
  });
}

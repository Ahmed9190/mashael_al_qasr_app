import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:mashael_al_qasr_5/models/user/user.dart';
import 'package:mashael_al_qasr_5/models/user_sign_in/user_sign_in.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/language/localization.dart';
import 'package:mashael_al_qasr_5/utils/user_shared_preferences.dart';

class UserService with LocalizationBoundary {
  Future<User> signIn(UserSignIn userSignInData) async {
    try {
      User user = await Api.post(
        "/login",
        data: userSignInData.toJson(),
        fromJson: User.fromJson,
      );

      return user;
    } on DioError catch (e) {
      final loc = LocalizationBoundary.loc;

      if (e.response?.statusCode == 401) {
        throw ErrorDescription(loc.makeSureDataIsCorrect);
      }
      throw ErrorDescription(loc.somethingWentWrongPleaseTryAgain);
    }
  }

  void saveSignInUser(UserSignIn userSignInData) {
    UserSharedPreferenced.saveSignInUser(userSignInData);
  }

  void removeSavedSignInUser() {
    UserSharedPreferenced.removeSavedSignInUser();
  }
}

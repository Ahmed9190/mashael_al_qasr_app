import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/models/user/user.dart';
import 'package:mashael_al_qasr_5/models/user_sign_in/user_sign_in.dart';
import 'package:mashael_al_qasr_5/providers/config_provider.dart';
import 'package:mashael_al_qasr_5/services/user_service.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';

class UserProvider extends ChangeNotifier {
  final UserService _userService;
  UserProvider(this._userService);

  static User? user;

  ApiStatus _apiStatus = ApiStatus.initial;
  ApiStatus get apiStatus => _apiStatus;
  set apiStatus(ApiStatus apiStatus) {
    _apiStatus = apiStatus;
    notifyListeners();
  }

  Future<void> signInAndAppendToken(UserSignIn userSignIn) async {
    apiStatus = ApiStatus.loading;

    try {
      user = await _userService.signIn(userSignIn);

      ConfigProvider.appendBearerToken();

      apiStatus = ApiStatus.loaded;
    } catch (e) {
      apiStatus = ApiStatus.error;
      rethrow;
    }
  }
}

import 'package:mashael_al_qasr_5/models/user_sign_in/user_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferenced {
  static Future<UserSignIn> getSavedSignInUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    UserSignIn userSignIn = UserSignIn(
      userNo: prefs.getString("userNo"),
      password: prefs.getString("password"),
    );

    return userSignIn;
  }

  static void saveSignInUser(UserSignIn userSignIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("userNo", userSignIn.userNo!);
    await prefs.setString("password", userSignIn.password!);
  }

  static void removeSavedSignInUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("userNo");
    await prefs.remove("password");
  }
}

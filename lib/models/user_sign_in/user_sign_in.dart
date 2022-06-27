import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_in.freezed.dart';
part 'user_sign_in.g.dart';

@freezed
class UserSignIn with _$UserSignIn {
  UserSignIn._();

  factory UserSignIn({
    @JsonKey(name: "User_no") String? userNo,
    @JsonKey(name: "user_pwd") String? password,
  }) = _UserSignIn;

  factory UserSignIn.fromJson(Map<String, dynamic> json) =>
      _$UserSignInFromJson(json);

  bool get isDataExists => userNo != null && password != null;

  // static Future<User> signInAndSetBearerToken(
  //   String userNo,
  //   String password,
  // ) async {
  //   signIn(userNo, password).then(
  //     (value) => ConfigProvider.appendBearerToken(),
  //   );
  // }

  // static Future<User> signIn(String userNo, String password) async {
  //   try {
  //     UserSignIn userSignInData = UserSignIn(
  //       userNo: userNo,
  //       password: password,
  //     );

  //     User user = await Api.post(
  //       "/login",
  //       data: userSignInData.toJson(),
  //       fromJson: User.fromJson,
  //     );

  //     UserSharedPreferenced.saveSignInUser(userSignInData);

  //     // Navigator.pushReplacement(
  //     //   context,
  //     //   MaterialPageRoute(
  //     //     builder: (_) => const InvoicesScreen(),
  //     //   ),
  //     // );

  //     return user;
  //   } catch (e) {
  //     rethrow;
  //     // if (e is DioError && e.response?.statusCode == 401) {
  //     //   showSnackBar(context, t(context).incorrectData);
  //     // }
  //     // showSnackBar(context, t(context).somethingWentWrongPleaseTryAgain);
  //     // CustomNavigator.pushReplacement(context, const SignInScreen());
  //   }
  // }
}

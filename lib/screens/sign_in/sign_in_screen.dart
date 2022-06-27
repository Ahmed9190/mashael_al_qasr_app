import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/components/custom_button.dart';
import 'package:mashael_al_qasr_5/components/gap.dart';
import 'package:mashael_al_qasr_5/components/inputs/input.dart';
import 'package:mashael_al_qasr_5/models/user_sign_in/user_sign_in.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:mashael_al_qasr_5/screens/invoice/invoices_screen.dart';
import 'package:mashael_al_qasr_5/screens/sign_in/sign_in_wrapper.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/custom_navigator.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/show_snackbar.dart';
import 'package:mashael_al_qasr_5/utils/user_shared_preferences.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  final Widget? child;
  final UserSignIn? signInData;

  const SignInScreen({
    Key? key,
    this.child,
    this.signInData,
  }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _usernameController =
        TextEditingController(text: widget.signInData?.userNo ?? "");
    _passwordController =
        TextEditingController(text: widget.signInData?.password ?? "");
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final UserProvider userProvider = context.read<UserProvider>();
      try {
        UserSignIn signInData = UserSignIn(
          userNo: _usernameController.text,
          password: _passwordController.text,
        );
        await userProvider.signInAndAppendToken(signInData);
        UserSharedPreferenced.saveSignInUser(signInData);
        CustomNavigator.pushReplacement(context, const InvoicesScreen());
      } on ErrorDescription catch (e) {
        showSnackBar(context, e.toDescription());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider = context.watch<UserProvider>();
    final bool isLoading = userProvider.apiStatus == ApiStatus.loading;

    return SignInWrapper(
      isLoading: isLoading,
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Gap(
          children: [
            Input(
              key: const Key("user number input"),
              label: t(context).userNumber,
              controller: _usernameController,
              req: true,
              color: Colors.white,
              type: InputType.number,
              textDirection: TextDirection.ltr,
              autofocus: true,
            ),
            Input(
              key: const Key("password input"),
              label: t(context).password,
              controller: _passwordController,
              password: true,
              req: true,
              color: Colors.white,
              textDirection: TextDirection.ltr,
              onFieldSubmitted: (_) => _submitForm(),
              textInputAction: TextInputAction.go,
            ),
            CustomButton(
              key: const Key("sign in button"),
              buttonColors: Colors.white,
              textColors: primaryColor,
              label: t(context).signIn,
              onPressed: _submitForm,
            ),
          ],
        ),
      ),
    );
  }
}

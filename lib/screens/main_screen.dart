import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/material_app_wrapper.dart';
import 'package:mashael_al_qasr_5/utils/language/localization.dart';
import 'package:mashael_al_qasr_5/utils/socket.io_util.dart';
import 'package:provider/provider.dart';

import 'package:mashael_al_qasr_5/components/alert_dialog.dart';
import 'package:mashael_al_qasr_5/models/user_sign_in/user_sign_in.dart';
import 'package:mashael_al_qasr_5/providers/config_provider.dart';
import 'package:mashael_al_qasr_5/providers/local_config_provider.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:mashael_al_qasr_5/screens/invoice/invoices_screen.dart';
import 'package:mashael_al_qasr_5/screens/sign_in/sign_in_screen.dart';
import 'package:mashael_al_qasr_5/screens/splash_screen.dart';
import 'package:mashael_al_qasr_5/services/user_service.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/custom_navigator.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/user_shared_preferences.dart';

class MainScreen extends StatefulWidget {
  final Widget child;
  final UserService? userService;

  const MainScreen({
    Key? key,
    required this.child,
    this.userService,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Locale? get locale => LocalConfigProvider.localConfig?.currentLanguage != null
      ? Locale(LocalConfigProvider.localConfig!.currentLanguage.name, "")
      : null;

  final SocketIoHandler socketIoHandler = SocketIoHandler();

  @override
  Widget build(BuildContext context) {
    if (apiUrl.isEmpty) {
      socketIoHandler.onConnectReceiveIp(callback: () => setState(() {}));

      return MaterialAppWrapper(
        child: Builder(builder: (context) {
          Timer(
            const Duration(seconds: 10),
            () => showConfirmationDialog(
              context: context,
              confirmationSentance: t(context).serverIpNotFound,
              barrierDismissible: false,
              confirmButtonLabel: t(context).tryAgain,
              onPressedConfirm: () {
                socketIoHandler.requestIp();
                setState(() {});
              },
              dense: false,
            ),
          );

          return const SplashScreen();
        }),
      );
    }

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(
            create: (context) =>
                UserProvider(widget.userService ?? UserService())),
        ChangeNotifierProvider<ConfigProvider>(
            create: (context) => ConfigProvider()),
        ChangeNotifierProvider<LocalConfigProvider>(
            create: (context) => LocalConfigProvider()),
      ],
      child: Builder(builder: (context) {
        context.watch<LocalConfigProvider>();

        return MaterialAppWrapper(
          child: Builder(
            builder: (BuildContext context) {
              LocalizationBoundary.init(context);
              return widget.child;
            },
          ),
        );
      }),
    );
  }
}

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _isAlertShown = false;
  bool _isSigningIn = false;
  late UserProvider userProvider = context.read<UserProvider>();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      context
          .read<ConfigProvider>()
          .addListener(_showDownloadAlertIfNotUpToDate);
    });
  }

  void _showDownloadAlertIfNotUpToDate() async {
    if (ConfigProvider.serverConfig != null &&
        ConfigProvider.serverConfig!.version != appVersion &&
        !_isAlertShown) {
      _isAlertShown = true;
      showVisitUrlDialog(
        context: context,
        content: t(context).appUpdated,
        buttonLabel: t(context).download,
        urlToFetch: "/apk-url",
      );
    } else if (ConfigProvider.serverConfig?.version == appVersion &&
        !_isSigningIn) {
      _isSigningIn = true;
      await initSignin();
    }
  }

  Future<void> initSignin() async {
    final UserSignIn userSignIn =
        await UserSharedPreferenced.getSavedSignInUser();
    try {
      if (userSignIn.isDataExists) {
        await userProvider.signInAndAppendToken(
          UserSignIn(
            userNo: userSignIn.userNo!,
            password: userSignIn.password!,
          ),
        );
      } else {
        pushReplacement(const SignInScreen());
      }

      if (UserProvider.user?.token != null) {
        pushReplacement(const InvoicesScreen());
      }
    } catch (e) {
      pushReplacement(
        SignInScreen(signInData: userSignIn.isDataExists ? userSignIn : null),
      );
    }
  }

  void pushReplacement(Widget screen) {
    CustomNavigator.pushReplacement(context, screen);
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:mashael_al_qasr_5/providers/local_config_provider.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';

class MaterialAppWrapper extends StatelessWidget {
  final Widget child;

  const MaterialAppWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  Locale? get locale => LocalConfigProvider.localConfig?.currentLanguage != null
      ? Locale(LocalConfigProvider.localConfig!.currentLanguage.name, "")
      : const Locale("ar");

  @override
  Widget build(BuildContext context) {
    const TextStyle defaultTextStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: ColorPalette.darkColor,
    );

    return MaterialApp(
      title: 'Mashael Al Qasr',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ar", ""), Locale("en", "")],
      locale: locale,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        fontFamily: "Cairo",
        primarySwatch: ColorPalette.primary,
        colorScheme: const ColorScheme.light(
          primary: ColorPalette.primary, // header background color
          onPrimary: Colors.white, // header text color
          onSurface: ColorPalette.darkColor, // body text color
        ),
        textTheme: const TextTheme(
          bodyMedium: defaultTextStyle,
          bodySmall: defaultTextStyle,
          bodyLarge: defaultTextStyle,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: child,
    );
  }
}

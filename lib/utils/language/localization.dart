import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationBoundary {
  static late AppLocalizations loc;

  static void init(BuildContext context) => loc = AppLocalizations.of(context)!;
}

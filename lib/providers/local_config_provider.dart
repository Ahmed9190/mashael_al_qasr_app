import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/models/local_config/local_config.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/language/language_shared_preferences.dart';

class LocalConfigProvider extends ChangeNotifier {
  static LocalConfig? _localConfig;
  static LocalConfig? get localConfig => _localConfig;

  void setLocalConfig(LocalConfig config) {
    _localConfig = config;
    notifyListeners();
  }

  LocalConfigProvider() {
    initializeLanguage();
  }

  Future<void> initializeLanguage() async {
    LanguagesOptions? currentLanguage =
        await LanguageSharedPreferences.currentLanguage;
    if (currentLanguage == null) {
      LanguageSharedPreferences.setDefaultLanguage();
    }

    setLocalConfig(LocalConfig(
      currentLanguage: (await LanguageSharedPreferences.currentLanguage)!,
    ));
  }

  void setLanguage(LanguagesOptions newLanguage) {
    setLocalConfig(
      _localConfig!.copyWith(currentLanguage: newLanguage),
    );
  }
}

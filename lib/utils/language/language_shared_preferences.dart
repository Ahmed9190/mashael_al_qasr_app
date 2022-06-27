import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageSharedPreferences {
  static String languageSharedPreferencesKey = "language";
  static String defaultLanguage = LanguagesOptions.ar.name;

  static Future<LanguagesOptions?> get currentLanguage async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? currentLanguage =
        prefs.getString(languageSharedPreferencesKey);

    return languagesOptionsParse(currentLanguage);
  }

  static LanguagesOptions? languagesOptionsParse(String? languageString) {
    switch (languageString) {
      case "ar":
        return LanguagesOptions.ar;
      case "en":
        return LanguagesOptions.en;
      default:
        return null;
    }
  }

  static Future<void> setLanguage(language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(languageSharedPreferencesKey, language);
  }

  static Future<void> setDefaultLanguage() => setLanguage(defaultLanguage);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

part 'local_config.freezed.dart';

@freezed
class LocalConfig with _$LocalConfig {
  const LocalConfig._();

  factory LocalConfig({
    required LanguagesOptions currentLanguage,
  }) = _LocalConfig;
}

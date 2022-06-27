// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalConfig {
  LanguagesOptions get currentLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalConfigCopyWith<LocalConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalConfigCopyWith<$Res> {
  factory $LocalConfigCopyWith(
          LocalConfig value, $Res Function(LocalConfig) then) =
      _$LocalConfigCopyWithImpl<$Res>;
  $Res call({LanguagesOptions currentLanguage});
}

/// @nodoc
class _$LocalConfigCopyWithImpl<$Res> implements $LocalConfigCopyWith<$Res> {
  _$LocalConfigCopyWithImpl(this._value, this._then);

  final LocalConfig _value;
  // ignore: unused_field
  final $Res Function(LocalConfig) _then;

  @override
  $Res call({
    Object? currentLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      currentLanguage: currentLanguage == freezed
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as LanguagesOptions,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalConfigCopyWith<$Res>
    implements $LocalConfigCopyWith<$Res> {
  factory _$$_LocalConfigCopyWith(
          _$_LocalConfig value, $Res Function(_$_LocalConfig) then) =
      __$$_LocalConfigCopyWithImpl<$Res>;
  @override
  $Res call({LanguagesOptions currentLanguage});
}

/// @nodoc
class __$$_LocalConfigCopyWithImpl<$Res> extends _$LocalConfigCopyWithImpl<$Res>
    implements _$$_LocalConfigCopyWith<$Res> {
  __$$_LocalConfigCopyWithImpl(
      _$_LocalConfig _value, $Res Function(_$_LocalConfig) _then)
      : super(_value, (v) => _then(v as _$_LocalConfig));

  @override
  _$_LocalConfig get _value => super._value as _$_LocalConfig;

  @override
  $Res call({
    Object? currentLanguage = freezed,
  }) {
    return _then(_$_LocalConfig(
      currentLanguage: currentLanguage == freezed
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as LanguagesOptions,
    ));
  }
}

/// @nodoc

class _$_LocalConfig extends _LocalConfig {
  _$_LocalConfig({required this.currentLanguage}) : super._();

  @override
  final LanguagesOptions currentLanguage;

  @override
  String toString() {
    return 'LocalConfig(currentLanguage: $currentLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalConfig &&
            const DeepCollectionEquality()
                .equals(other.currentLanguage, currentLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentLanguage));

  @JsonKey(ignore: true)
  @override
  _$$_LocalConfigCopyWith<_$_LocalConfig> get copyWith =>
      __$$_LocalConfigCopyWithImpl<_$_LocalConfig>(this, _$identity);
}

abstract class _LocalConfig extends LocalConfig {
  factory _LocalConfig({required final LanguagesOptions currentLanguage}) =
      _$_LocalConfig;
  _LocalConfig._() : super._();

  @override
  LanguagesOptions get currentLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocalConfigCopyWith<_$_LocalConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_sign_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSignIn _$UserSignInFromJson(Map<String, dynamic> json) {
  return _UserSignIn.fromJson(json);
}

/// @nodoc
mixin _$UserSignIn {
  @JsonKey(name: "User_no")
  String? get userNo => throw _privateConstructorUsedError;
  @JsonKey(name: "user_pwd")
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSignInCopyWith<UserSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignInCopyWith<$Res> {
  factory $UserSignInCopyWith(
          UserSignIn value, $Res Function(UserSignIn) then) =
      _$UserSignInCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "User_no") String? userNo,
      @JsonKey(name: "user_pwd") String? password});
}

/// @nodoc
class _$UserSignInCopyWithImpl<$Res> implements $UserSignInCopyWith<$Res> {
  _$UserSignInCopyWithImpl(this._value, this._then);

  final UserSignIn _value;
  // ignore: unused_field
  final $Res Function(UserSignIn) _then;

  @override
  $Res call({
    Object? userNo = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userNo: userNo == freezed
          ? _value.userNo
          : userNo // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserSignInCopyWith<$Res>
    implements $UserSignInCopyWith<$Res> {
  factory _$$_UserSignInCopyWith(
          _$_UserSignIn value, $Res Function(_$_UserSignIn) then) =
      __$$_UserSignInCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "User_no") String? userNo,
      @JsonKey(name: "user_pwd") String? password});
}

/// @nodoc
class __$$_UserSignInCopyWithImpl<$Res> extends _$UserSignInCopyWithImpl<$Res>
    implements _$$_UserSignInCopyWith<$Res> {
  __$$_UserSignInCopyWithImpl(
      _$_UserSignIn _value, $Res Function(_$_UserSignIn) _then)
      : super(_value, (v) => _then(v as _$_UserSignIn));

  @override
  _$_UserSignIn get _value => super._value as _$_UserSignIn;

  @override
  $Res call({
    Object? userNo = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_UserSignIn(
      userNo: userNo == freezed
          ? _value.userNo
          : userNo // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSignIn extends _UserSignIn {
  _$_UserSignIn(
      {@JsonKey(name: "User_no") this.userNo,
      @JsonKey(name: "user_pwd") this.password})
      : super._();

  factory _$_UserSignIn.fromJson(Map<String, dynamic> json) =>
      _$$_UserSignInFromJson(json);

  @override
  @JsonKey(name: "User_no")
  final String? userNo;
  @override
  @JsonKey(name: "user_pwd")
  final String? password;

  @override
  String toString() {
    return 'UserSignIn(userNo: $userNo, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSignIn &&
            const DeepCollectionEquality().equals(other.userNo, userNo) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userNo),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_UserSignInCopyWith<_$_UserSignIn> get copyWith =>
      __$$_UserSignInCopyWithImpl<_$_UserSignIn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSignInToJson(this);
  }
}

abstract class _UserSignIn extends UserSignIn {
  factory _UserSignIn(
      {@JsonKey(name: "User_no") final String? userNo,
      @JsonKey(name: "user_pwd") final String? password}) = _$_UserSignIn;
  _UserSignIn._() : super._();

  factory _UserSignIn.fromJson(Map<String, dynamic> json) =
      _$_UserSignIn.fromJson;

  @override
  @JsonKey(name: "User_no")
  String? get userNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_pwd")
  String? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserSignInCopyWith<_$_UserSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

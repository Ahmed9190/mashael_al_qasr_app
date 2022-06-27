// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get userNo => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get branchSubNo => throw _privateConstructorUsedError;
  int get storeNo => throw _privateConstructorUsedError;
  int get cashAccNo => throw _privateConstructorUsedError;
  int get saleAccountNo => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int userNo,
      String userName,
      int branchSubNo,
      int storeNo,
      int cashAccNo,
      int saleAccountNo,
      String token});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userNo = freezed,
    Object? userName = freezed,
    Object? branchSubNo = freezed,
    Object? storeNo = freezed,
    Object? cashAccNo = freezed,
    Object? saleAccountNo = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      userNo: userNo == freezed
          ? _value.userNo
          : userNo // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      branchSubNo: branchSubNo == freezed
          ? _value.branchSubNo
          : branchSubNo // ignore: cast_nullable_to_non_nullable
              as int,
      storeNo: storeNo == freezed
          ? _value.storeNo
          : storeNo // ignore: cast_nullable_to_non_nullable
              as int,
      cashAccNo: cashAccNo == freezed
          ? _value.cashAccNo
          : cashAccNo // ignore: cast_nullable_to_non_nullable
              as int,
      saleAccountNo: saleAccountNo == freezed
          ? _value.saleAccountNo
          : saleAccountNo // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int userNo,
      String userName,
      int branchSubNo,
      int storeNo,
      int cashAccNo,
      int saleAccountNo,
      String token});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? userNo = freezed,
    Object? userName = freezed,
    Object? branchSubNo = freezed,
    Object? storeNo = freezed,
    Object? cashAccNo = freezed,
    Object? saleAccountNo = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_User(
      userNo: userNo == freezed
          ? _value.userNo
          : userNo // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      branchSubNo: branchSubNo == freezed
          ? _value.branchSubNo
          : branchSubNo // ignore: cast_nullable_to_non_nullable
              as int,
      storeNo: storeNo == freezed
          ? _value.storeNo
          : storeNo // ignore: cast_nullable_to_non_nullable
              as int,
      cashAccNo: cashAccNo == freezed
          ? _value.cashAccNo
          : cashAccNo // ignore: cast_nullable_to_non_nullable
              as int,
      saleAccountNo: saleAccountNo == freezed
          ? _value.saleAccountNo
          : saleAccountNo // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {required this.userNo,
      required this.userName,
      required this.branchSubNo,
      required this.storeNo,
      required this.cashAccNo,
      required this.saleAccountNo,
      required this.token});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int userNo;
  @override
  final String userName;
  @override
  final int branchSubNo;
  @override
  final int storeNo;
  @override
  final int cashAccNo;
  @override
  final int saleAccountNo;
  @override
  final String token;

  @override
  String toString() {
    return 'User(userNo: $userNo, userName: $userName, branchSubNo: $branchSubNo, storeNo: $storeNo, cashAccNo: $cashAccNo, saleAccountNo: $saleAccountNo, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.userNo, userNo) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.branchSubNo, branchSubNo) &&
            const DeepCollectionEquality().equals(other.storeNo, storeNo) &&
            const DeepCollectionEquality().equals(other.cashAccNo, cashAccNo) &&
            const DeepCollectionEquality()
                .equals(other.saleAccountNo, saleAccountNo) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userNo),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(branchSubNo),
      const DeepCollectionEquality().hash(storeNo),
      const DeepCollectionEquality().hash(cashAccNo),
      const DeepCollectionEquality().hash(saleAccountNo),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {required final int userNo,
      required final String userName,
      required final int branchSubNo,
      required final int storeNo,
      required final int cashAccNo,
      required final int saleAccountNo,
      required final String token}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get userNo => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  int get branchSubNo => throw _privateConstructorUsedError;
  @override
  int get storeNo => throw _privateConstructorUsedError;
  @override
  int get cashAccNo => throw _privateConstructorUsedError;
  @override
  int get saleAccountNo => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

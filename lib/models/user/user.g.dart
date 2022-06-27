// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userNo: json['userNo'] as int,
      userName: json['userName'] as String,
      branchSubNo: json['branchSubNo'] as int,
      storeNo: json['storeNo'] as int,
      cashAccNo: json['cashAccNo'] as int,
      saleAccountNo: json['saleAccountNo'] as int,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userNo': instance.userNo,
      'userName': instance.userName,
      'branchSubNo': instance.branchSubNo,
      'storeNo': instance.storeNo,
      'cashAccNo': instance.cashAccNo,
      'saleAccountNo': instance.saleAccountNo,
      'token': instance.token,
    };

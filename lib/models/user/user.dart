// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int userNo,
    required String userName,
    required int branchSubNo,
    required int storeNo,
    required int cashAccNo,
    required int saleAccountNo,
    //TODO: remove from here just save it inside configs or think again but take an action
    required String token,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

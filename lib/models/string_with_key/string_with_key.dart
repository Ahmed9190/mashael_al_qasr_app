import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_with_key.freezed.dart';

@freezed
class StringWithKey<T> with _$StringWithKey<T> {
  factory StringWithKey({
    required T key,
    required String name,
  }) = _StringWithKey<T>;
}

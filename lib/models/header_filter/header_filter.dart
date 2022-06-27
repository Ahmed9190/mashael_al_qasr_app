import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_filter.freezed.dart';

@freezed
class HeaderFilter with _$HeaderFilter {
  factory HeaderFilter({
    required void Function() clearFn,
    required String title,
    required bool isActive,
  }) = _HeaderFilter;
}

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashael_al_qasr_5/utils/custom_datetime.dart';

part 'filters.freezed.dart';
part 'filters.g.dart';

@freezed
class Filters with _$Filters {
  const Filters._();

  factory Filters({
    @JsonKey(name: "from") String? fromDate,
    @JsonKey(name: "to") String? toDate,
    @JsonKey(name: "Custno") int? customerNo,
  }) = _Filters;

  factory Filters.fromJson(dynamic json) => _$FiltersFromJson(json);

  Map<String, dynamic> toQueryParameters() => {
        if (fromDate != null) "from": CustomDateTime.flipFormat(fromDate!),
        if (toDate != null) "to": CustomDateTime.flipFormat(toDate!),
        if (customerNo != null) "Custno": customerNo,
      };

  bool get hasCustomerFilter => customerNo != null;
  bool get hasDateFilter => fromDate != null || toDate != null;
  bool get hasFilters => hasCustomerFilter || hasDateFilter;
  bool get hasDateRangeFilter => fromDate != null && toDate != null;
  bool get hasRightDateFilter =>
      hasDateRangeFilter &&
      DateTime.parse(CustomDateTime.flipFormat(toDate!))
              .difference(DateTime.parse(CustomDateTime.flipFormat(fromDate!)))
              .inDays >=
          0;
  bool get hasWrongDateFilter => !hasRightDateFilter;
}

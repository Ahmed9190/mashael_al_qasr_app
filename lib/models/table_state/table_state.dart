import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashael_al_qasr_5/models/filters.dart';

part 'table_state.freezed.dart';
part 'table_state.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class TableState<T> with _$TableState<T> {
  factory TableState({
    required bool loading,
    required String error,
    required bool apiHasMoreData,
    required List<T> elements,
    required Filters filters,
  }) = _TableState<T>;

  factory TableState.fromJson(
      Map<String, dynamic> json, T Function(Object?) fromJsonT) {
    return _$TableStateFromJson<T>(json, fromJsonT);
  }
}

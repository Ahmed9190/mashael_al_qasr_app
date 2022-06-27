// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Filters _$FiltersFromJson(Map<String, dynamic> json) {
  return _Filters.fromJson(json);
}

/// @nodoc
mixin _$Filters {
  @JsonKey(name: "from")
  String? get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  String? get toDate => throw _privateConstructorUsedError;
  @JsonKey(name: "Custno")
  int? get customerNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FiltersCopyWith<Filters> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersCopyWith<$Res> {
  factory $FiltersCopyWith(Filters value, $Res Function(Filters) then) =
      _$FiltersCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "from") String? fromDate,
      @JsonKey(name: "to") String? toDate,
      @JsonKey(name: "Custno") int? customerNo});
}

/// @nodoc
class _$FiltersCopyWithImpl<$Res> implements $FiltersCopyWith<$Res> {
  _$FiltersCopyWithImpl(this._value, this._then);

  final Filters _value;
  // ignore: unused_field
  final $Res Function(Filters) _then;

  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? customerNo = freezed,
  }) {
    return _then(_value.copyWith(
      fromDate: fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNo: customerNo == freezed
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_FiltersCopyWith<$Res> implements $FiltersCopyWith<$Res> {
  factory _$$_FiltersCopyWith(
          _$_Filters value, $Res Function(_$_Filters) then) =
      __$$_FiltersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "from") String? fromDate,
      @JsonKey(name: "to") String? toDate,
      @JsonKey(name: "Custno") int? customerNo});
}

/// @nodoc
class __$$_FiltersCopyWithImpl<$Res> extends _$FiltersCopyWithImpl<$Res>
    implements _$$_FiltersCopyWith<$Res> {
  __$$_FiltersCopyWithImpl(_$_Filters _value, $Res Function(_$_Filters) _then)
      : super(_value, (v) => _then(v as _$_Filters));

  @override
  _$_Filters get _value => super._value as _$_Filters;

  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? customerNo = freezed,
  }) {
    return _then(_$_Filters(
      fromDate: fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNo: customerNo == freezed
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Filters extends _Filters {
  _$_Filters(
      {@JsonKey(name: "from") this.fromDate,
      @JsonKey(name: "to") this.toDate,
      @JsonKey(name: "Custno") this.customerNo})
      : super._();

  factory _$_Filters.fromJson(Map<String, dynamic> json) =>
      _$$_FiltersFromJson(json);

  @override
  @JsonKey(name: "from")
  final String? fromDate;
  @override
  @JsonKey(name: "to")
  final String? toDate;
  @override
  @JsonKey(name: "Custno")
  final int? customerNo;

  @override
  String toString() {
    return 'Filters(fromDate: $fromDate, toDate: $toDate, customerNo: $customerNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Filters &&
            const DeepCollectionEquality().equals(other.fromDate, fromDate) &&
            const DeepCollectionEquality().equals(other.toDate, toDate) &&
            const DeepCollectionEquality()
                .equals(other.customerNo, customerNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fromDate),
      const DeepCollectionEquality().hash(toDate),
      const DeepCollectionEquality().hash(customerNo));

  @JsonKey(ignore: true)
  @override
  _$$_FiltersCopyWith<_$_Filters> get copyWith =>
      __$$_FiltersCopyWithImpl<_$_Filters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FiltersToJson(this);
  }
}

abstract class _Filters extends Filters {
  factory _Filters(
      {@JsonKey(name: "from") final String? fromDate,
      @JsonKey(name: "to") final String? toDate,
      @JsonKey(name: "Custno") final int? customerNo}) = _$_Filters;
  _Filters._() : super._();

  factory _Filters.fromJson(Map<String, dynamic> json) = _$_Filters.fromJson;

  @override
  @JsonKey(name: "from")
  String? get fromDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "to")
  String? get toDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Custno")
  int? get customerNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FiltersCopyWith<_$_Filters> get copyWith =>
      throw _privateConstructorUsedError;
}

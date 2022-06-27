// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceTitle _$InvoiceTitleFromJson(Map<String, dynamic> json) {
  return _InvoiceTitle.fromJson(json);
}

/// @nodoc
mixin _$InvoiceTitle {
  @JsonKey(name: "invno")
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "CustName")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "invdate")
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceTitleCopyWith<InvoiceTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceTitleCopyWith<$Res> {
  factory $InvoiceTitleCopyWith(
          InvoiceTitle value, $Res Function(InvoiceTitle) then) =
      _$InvoiceTitleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "invno") int? number,
      @JsonKey(name: "CustName") String? customerName,
      @JsonKey(name: "invdate") String? date});
}

/// @nodoc
class _$InvoiceTitleCopyWithImpl<$Res> implements $InvoiceTitleCopyWith<$Res> {
  _$InvoiceTitleCopyWithImpl(this._value, this._then);

  final InvoiceTitle _value;
  // ignore: unused_field
  final $Res Function(InvoiceTitle) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? customerName = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_InvoiceTitleCopyWith<$Res>
    implements $InvoiceTitleCopyWith<$Res> {
  factory _$$_InvoiceTitleCopyWith(
          _$_InvoiceTitle value, $Res Function(_$_InvoiceTitle) then) =
      __$$_InvoiceTitleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "invno") int? number,
      @JsonKey(name: "CustName") String? customerName,
      @JsonKey(name: "invdate") String? date});
}

/// @nodoc
class __$$_InvoiceTitleCopyWithImpl<$Res>
    extends _$InvoiceTitleCopyWithImpl<$Res>
    implements _$$_InvoiceTitleCopyWith<$Res> {
  __$$_InvoiceTitleCopyWithImpl(
      _$_InvoiceTitle _value, $Res Function(_$_InvoiceTitle) _then)
      : super(_value, (v) => _then(v as _$_InvoiceTitle));

  @override
  _$_InvoiceTitle get _value => super._value as _$_InvoiceTitle;

  @override
  $Res call({
    Object? number = freezed,
    Object? customerName = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_InvoiceTitle(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceTitle implements _InvoiceTitle {
  _$_InvoiceTitle(
      {@JsonKey(name: "invno") this.number,
      @JsonKey(name: "CustName") this.customerName,
      @JsonKey(name: "invdate") this.date});

  factory _$_InvoiceTitle.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceTitleFromJson(json);

  @override
  @JsonKey(name: "invno")
  final int? number;
  @override
  @JsonKey(name: "CustName")
  final String? customerName;
  @override
  @JsonKey(name: "invdate")
  final String? date;

  @override
  String toString() {
    return 'InvoiceTitle(number: $number, customerName: $customerName, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceTitle &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_InvoiceTitleCopyWith<_$_InvoiceTitle> get copyWith =>
      __$$_InvoiceTitleCopyWithImpl<_$_InvoiceTitle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceTitleToJson(this);
  }
}

abstract class _InvoiceTitle implements InvoiceTitle {
  factory _InvoiceTitle(
      {@JsonKey(name: "invno") final int? number,
      @JsonKey(name: "CustName") final String? customerName,
      @JsonKey(name: "invdate") final String? date}) = _$_InvoiceTitle;

  factory _InvoiceTitle.fromJson(Map<String, dynamic> json) =
      _$_InvoiceTitle.fromJson;

  @override
  @JsonKey(name: "invno")
  int? get number => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CustName")
  String? get customerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invdate")
  String? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceTitleCopyWith<_$_InvoiceTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

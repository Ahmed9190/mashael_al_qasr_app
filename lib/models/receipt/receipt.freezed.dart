// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Receipt _$ReceiptFromJson(Map<String, dynamic> json) {
  return _Receipt.fromJson(json);
}

/// @nodoc
mixin _$Receipt {
  @JsonKey(name: "Recno")
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "Amount")
  double? get moneyAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "AccName")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "CreatedDate")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "Description")
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptCopyWith<Receipt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCopyWith<$Res> {
  factory $ReceiptCopyWith(Receipt value, $Res Function(Receipt) then) =
      _$ReceiptCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Recno") int? number,
      @JsonKey(name: "Amount") double? moneyAmount,
      @JsonKey(name: "AccName") String? customerName,
      @JsonKey(name: "CreatedDate") String? date,
      @JsonKey(name: "Description") String? description});
}

/// @nodoc
class _$ReceiptCopyWithImpl<$Res> implements $ReceiptCopyWith<$Res> {
  _$ReceiptCopyWithImpl(this._value, this._then);

  final Receipt _value;
  // ignore: unused_field
  final $Res Function(Receipt) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? moneyAmount = freezed,
    Object? customerName = freezed,
    Object? date = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      moneyAmount: moneyAmount == freezed
          ? _value.moneyAmount
          : moneyAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ReceiptCopyWith<$Res> implements $ReceiptCopyWith<$Res> {
  factory _$$_ReceiptCopyWith(
          _$_Receipt value, $Res Function(_$_Receipt) then) =
      __$$_ReceiptCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Recno") int? number,
      @JsonKey(name: "Amount") double? moneyAmount,
      @JsonKey(name: "AccName") String? customerName,
      @JsonKey(name: "CreatedDate") String? date,
      @JsonKey(name: "Description") String? description});
}

/// @nodoc
class __$$_ReceiptCopyWithImpl<$Res> extends _$ReceiptCopyWithImpl<$Res>
    implements _$$_ReceiptCopyWith<$Res> {
  __$$_ReceiptCopyWithImpl(_$_Receipt _value, $Res Function(_$_Receipt) _then)
      : super(_value, (v) => _then(v as _$_Receipt));

  @override
  _$_Receipt get _value => super._value as _$_Receipt;

  @override
  $Res call({
    Object? number = freezed,
    Object? moneyAmount = freezed,
    Object? customerName = freezed,
    Object? date = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Receipt(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      moneyAmount: moneyAmount == freezed
          ? _value.moneyAmount
          : moneyAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Receipt implements _Receipt {
  _$_Receipt(
      {@JsonKey(name: "Recno") this.number,
      @JsonKey(name: "Amount") this.moneyAmount,
      @JsonKey(name: "AccName") this.customerName,
      @JsonKey(name: "CreatedDate") this.date,
      @JsonKey(name: "Description") this.description});

  factory _$_Receipt.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptFromJson(json);

  @override
  @JsonKey(name: "Recno")
  final int? number;
  @override
  @JsonKey(name: "Amount")
  final double? moneyAmount;
  @override
  @JsonKey(name: "AccName")
  final String? customerName;
  @override
  @JsonKey(name: "CreatedDate")
  final String? date;
  @override
  @JsonKey(name: "Description")
  final String? description;

  @override
  String toString() {
    return 'Receipt(number: $number, moneyAmount: $moneyAmount, customerName: $customerName, date: $date, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Receipt &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality()
                .equals(other.moneyAmount, moneyAmount) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(moneyAmount),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      __$$_ReceiptCopyWithImpl<_$_Receipt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptToJson(this);
  }
}

abstract class _Receipt implements Receipt {
  factory _Receipt(
      {@JsonKey(name: "Recno") final int? number,
      @JsonKey(name: "Amount") final double? moneyAmount,
      @JsonKey(name: "AccName") final String? customerName,
      @JsonKey(name: "CreatedDate") final String? date,
      @JsonKey(name: "Description") final String? description}) = _$_Receipt;

  factory _Receipt.fromJson(Map<String, dynamic> json) = _$_Receipt.fromJson;

  @override
  @JsonKey(name: "Recno")
  int? get number => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Amount")
  double? get moneyAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "AccName")
  String? get customerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CreatedDate")
  String? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Description")
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      throw _privateConstructorUsedError;
}

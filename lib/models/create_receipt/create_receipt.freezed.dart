// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateReceipt _$CreateReceiptFromJson(Map<String, dynamic> json) {
  return _CreateReceipt.fromJson(json);
}

/// @nodoc
mixin _$CreateReceipt {
  @JsonKey(name: "userNo")
  int? get userNo => throw _privateConstructorUsedError;
  @JsonKey(name: "cashAccNo")
  int? get cashAccNo => throw _privateConstructorUsedError;
  @JsonKey(name: "accNo")
  int? get customerNo => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double? get moneyAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "BranchSubno")
  int? get branchSubno => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateReceiptCopyWith<CreateReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReceiptCopyWith<$Res> {
  factory $CreateReceiptCopyWith(
          CreateReceipt value, $Res Function(CreateReceipt) then) =
      _$CreateReceiptCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "userNo") int? userNo,
      @JsonKey(name: "cashAccNo") int? cashAccNo,
      @JsonKey(name: "accNo") int? customerNo,
      @JsonKey(name: "amount") double? moneyAmount,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "BranchSubno") int? branchSubno});
}

/// @nodoc
class _$CreateReceiptCopyWithImpl<$Res>
    implements $CreateReceiptCopyWith<$Res> {
  _$CreateReceiptCopyWithImpl(this._value, this._then);

  final CreateReceipt _value;
  // ignore: unused_field
  final $Res Function(CreateReceipt) _then;

  @override
  $Res call({
    Object? userNo = freezed,
    Object? cashAccNo = freezed,
    Object? customerNo = freezed,
    Object? moneyAmount = freezed,
    Object? description = freezed,
    Object? branchSubno = freezed,
  }) {
    return _then(_value.copyWith(
      userNo: userNo == freezed
          ? _value.userNo
          : userNo // ignore: cast_nullable_to_non_nullable
              as int?,
      cashAccNo: cashAccNo == freezed
          ? _value.cashAccNo
          : cashAccNo // ignore: cast_nullable_to_non_nullable
              as int?,
      customerNo: customerNo == freezed
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as int?,
      moneyAmount: moneyAmount == freezed
          ? _value.moneyAmount
          : moneyAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      branchSubno: branchSubno == freezed
          ? _value.branchSubno
          : branchSubno // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateReceiptCopyWith<$Res>
    implements $CreateReceiptCopyWith<$Res> {
  factory _$$_CreateReceiptCopyWith(
          _$_CreateReceipt value, $Res Function(_$_CreateReceipt) then) =
      __$$_CreateReceiptCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "userNo") int? userNo,
      @JsonKey(name: "cashAccNo") int? cashAccNo,
      @JsonKey(name: "accNo") int? customerNo,
      @JsonKey(name: "amount") double? moneyAmount,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "BranchSubno") int? branchSubno});
}

/// @nodoc
class __$$_CreateReceiptCopyWithImpl<$Res>
    extends _$CreateReceiptCopyWithImpl<$Res>
    implements _$$_CreateReceiptCopyWith<$Res> {
  __$$_CreateReceiptCopyWithImpl(
      _$_CreateReceipt _value, $Res Function(_$_CreateReceipt) _then)
      : super(_value, (v) => _then(v as _$_CreateReceipt));

  @override
  _$_CreateReceipt get _value => super._value as _$_CreateReceipt;

  @override
  $Res call({
    Object? userNo = freezed,
    Object? cashAccNo = freezed,
    Object? customerNo = freezed,
    Object? moneyAmount = freezed,
    Object? description = freezed,
    Object? branchSubno = freezed,
  }) {
    return _then(_$_CreateReceipt(
      userNo: userNo == freezed
          ? _value.userNo
          : userNo // ignore: cast_nullable_to_non_nullable
              as int?,
      cashAccNo: cashAccNo == freezed
          ? _value.cashAccNo
          : cashAccNo // ignore: cast_nullable_to_non_nullable
              as int?,
      customerNo: customerNo == freezed
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as int?,
      moneyAmount: moneyAmount == freezed
          ? _value.moneyAmount
          : moneyAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      branchSubno: branchSubno == freezed
          ? _value.branchSubno
          : branchSubno // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateReceipt implements _CreateReceipt {
  _$_CreateReceipt(
      {@JsonKey(name: "userNo") this.userNo,
      @JsonKey(name: "cashAccNo") this.cashAccNo,
      @JsonKey(name: "accNo") this.customerNo,
      @JsonKey(name: "amount") this.moneyAmount,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "BranchSubno") this.branchSubno});

  factory _$_CreateReceipt.fromJson(Map<String, dynamic> json) =>
      _$$_CreateReceiptFromJson(json);

  @override
  @JsonKey(name: "userNo")
  final int? userNo;
  @override
  @JsonKey(name: "cashAccNo")
  final int? cashAccNo;
  @override
  @JsonKey(name: "accNo")
  final int? customerNo;
  @override
  @JsonKey(name: "amount")
  final double? moneyAmount;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "BranchSubno")
  final int? branchSubno;

  @override
  String toString() {
    return 'CreateReceipt(userNo: $userNo, cashAccNo: $cashAccNo, customerNo: $customerNo, moneyAmount: $moneyAmount, description: $description, branchSubno: $branchSubno)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateReceipt &&
            const DeepCollectionEquality().equals(other.userNo, userNo) &&
            const DeepCollectionEquality().equals(other.cashAccNo, cashAccNo) &&
            const DeepCollectionEquality()
                .equals(other.customerNo, customerNo) &&
            const DeepCollectionEquality()
                .equals(other.moneyAmount, moneyAmount) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.branchSubno, branchSubno));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userNo),
      const DeepCollectionEquality().hash(cashAccNo),
      const DeepCollectionEquality().hash(customerNo),
      const DeepCollectionEquality().hash(moneyAmount),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(branchSubno));

  @JsonKey(ignore: true)
  @override
  _$$_CreateReceiptCopyWith<_$_CreateReceipt> get copyWith =>
      __$$_CreateReceiptCopyWithImpl<_$_CreateReceipt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateReceiptToJson(this);
  }
}

abstract class _CreateReceipt implements CreateReceipt {
  factory _CreateReceipt(
      {@JsonKey(name: "userNo") final int? userNo,
      @JsonKey(name: "cashAccNo") final int? cashAccNo,
      @JsonKey(name: "accNo") final int? customerNo,
      @JsonKey(name: "amount") final double? moneyAmount,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "BranchSubno") final int? branchSubno}) = _$_CreateReceipt;

  factory _CreateReceipt.fromJson(Map<String, dynamic> json) =
      _$_CreateReceipt.fromJson;

  @override
  @JsonKey(name: "userNo")
  int? get userNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "cashAccNo")
  int? get cashAccNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "accNo")
  int? get customerNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "amount")
  double? get moneyAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "BranchSubno")
  int? get branchSubno => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateReceiptCopyWith<_$_CreateReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

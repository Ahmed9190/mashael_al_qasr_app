// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  @JsonKey(name: "AccNo")
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "AccName")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "VATno")
  int? get vatNo => throw _privateConstructorUsedError;
  double? get debts => throw _privateConstructorUsedError;
  @JsonKey(name: "CreditLimit")
  double? get creditLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "AccNo") int? number,
      @JsonKey(name: "AccName") String? name,
      @JsonKey(name: "VATno") int? vatNo,
      double? debts,
      @JsonKey(name: "CreditLimit") double? creditLimit});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? vatNo = freezed,
    Object? debts = freezed,
    Object? creditLimit = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vatNo: vatNo == freezed
          ? _value.vatNo
          : vatNo // ignore: cast_nullable_to_non_nullable
              as int?,
      debts: debts == freezed
          ? _value.debts
          : debts // ignore: cast_nullable_to_non_nullable
              as double?,
      creditLimit: creditLimit == freezed
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$$_CustomerCopyWith(
          _$_Customer value, $Res Function(_$_Customer) then) =
      __$$_CustomerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "AccNo") int? number,
      @JsonKey(name: "AccName") String? name,
      @JsonKey(name: "VATno") int? vatNo,
      double? debts,
      @JsonKey(name: "CreditLimit") double? creditLimit});
}

/// @nodoc
class __$$_CustomerCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements _$$_CustomerCopyWith<$Res> {
  __$$_CustomerCopyWithImpl(
      _$_Customer _value, $Res Function(_$_Customer) _then)
      : super(_value, (v) => _then(v as _$_Customer));

  @override
  _$_Customer get _value => super._value as _$_Customer;

  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? vatNo = freezed,
    Object? debts = freezed,
    Object? creditLimit = freezed,
  }) {
    return _then(_$_Customer(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vatNo: vatNo == freezed
          ? _value.vatNo
          : vatNo // ignore: cast_nullable_to_non_nullable
              as int?,
      debts: debts == freezed
          ? _value.debts
          : debts // ignore: cast_nullable_to_non_nullable
              as double?,
      creditLimit: creditLimit == freezed
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Customer implements _Customer {
  _$_Customer(
      {@JsonKey(name: "AccNo") this.number,
      @JsonKey(name: "AccName") this.name,
      @JsonKey(name: "VATno") this.vatNo,
      this.debts,
      @JsonKey(name: "CreditLimit") this.creditLimit});

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  @JsonKey(name: "AccNo")
  final int? number;
  @override
  @JsonKey(name: "AccName")
  final String? name;
  @override
  @JsonKey(name: "VATno")
  final int? vatNo;
  @override
  final double? debts;
  @override
  @JsonKey(name: "CreditLimit")
  final double? creditLimit;

  @override
  String toString() {
    return 'Customer(number: $number, name: $name, vatNo: $vatNo, debts: $debts, creditLimit: $creditLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Customer &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.vatNo, vatNo) &&
            const DeepCollectionEquality().equals(other.debts, debts) &&
            const DeepCollectionEquality()
                .equals(other.creditLimit, creditLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(vatNo),
      const DeepCollectionEquality().hash(debts),
      const DeepCollectionEquality().hash(creditLimit));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      __$$_CustomerCopyWithImpl<_$_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(this);
  }
}

abstract class _Customer implements Customer {
  factory _Customer(
      {@JsonKey(name: "AccNo") final int? number,
      @JsonKey(name: "AccName") final String? name,
      @JsonKey(name: "VATno") final int? vatNo,
      final double? debts,
      @JsonKey(name: "CreditLimit") final double? creditLimit}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  @JsonKey(name: "AccNo")
  int? get number => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "AccName")
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "VATno")
  int? get vatNo => throw _privateConstructorUsedError;
  @override
  double? get debts => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CreditLimit")
  double? get creditLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

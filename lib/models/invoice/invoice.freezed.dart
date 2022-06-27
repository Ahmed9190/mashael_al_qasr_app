// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  @JsonKey(name: "invno")
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: "invdate")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "CustName")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customerVATno")
  int? get customerVatNo => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "DiscountTotal")
  double? get discountTotal => throw _privateConstructorUsedError;
  double? get netTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "TotAfterVAT")
  double? get totalAfterVAT => throw _privateConstructorUsedError;
  @JsonKey(name: "VATamount")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "PayType")
  String? get payType => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiceItems")
  List<InvoiceItem>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "invno") int number,
      @JsonKey(name: "invdate") String? date,
      @JsonKey(name: "CustName") String? customerName,
      @JsonKey(name: "customerVATno") int? customerVatNo,
      double? total,
      @JsonKey(name: "DiscountTotal") double? discountTotal,
      double? netTotal,
      @JsonKey(name: "TotAfterVAT") double? totalAfterVAT,
      @JsonKey(name: "VATamount") double? vat,
      @JsonKey(name: "PayType") String? payType,
      @JsonKey(name: "invoiceItems") List<InvoiceItem>? items});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  final Invoice _value;
  // ignore: unused_field
  final $Res Function(Invoice) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? date = freezed,
    Object? customerName = freezed,
    Object? customerVatNo = freezed,
    Object? total = freezed,
    Object? discountTotal = freezed,
    Object? netTotal = freezed,
    Object? totalAfterVAT = freezed,
    Object? vat = freezed,
    Object? payType = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerVatNo: customerVatNo == freezed
          ? _value.customerVatNo
          : customerVatNo // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      discountTotal: discountTotal == freezed
          ? _value.discountTotal
          : discountTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      netTotal: netTotal == freezed
          ? _value.netTotal
          : netTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAfterVAT: totalAfterVAT == freezed
          ? _value.totalAfterVAT
          : totalAfterVAT // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      payType: payType == freezed
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>?,
    ));
  }
}

/// @nodoc
abstract class _$$_InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$_InvoiceCopyWith(
          _$_Invoice value, $Res Function(_$_Invoice) then) =
      __$$_InvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "invno") int number,
      @JsonKey(name: "invdate") String? date,
      @JsonKey(name: "CustName") String? customerName,
      @JsonKey(name: "customerVATno") int? customerVatNo,
      double? total,
      @JsonKey(name: "DiscountTotal") double? discountTotal,
      double? netTotal,
      @JsonKey(name: "TotAfterVAT") double? totalAfterVAT,
      @JsonKey(name: "VATamount") double? vat,
      @JsonKey(name: "PayType") String? payType,
      @JsonKey(name: "invoiceItems") List<InvoiceItem>? items});
}

/// @nodoc
class __$$_InvoiceCopyWithImpl<$Res> extends _$InvoiceCopyWithImpl<$Res>
    implements _$$_InvoiceCopyWith<$Res> {
  __$$_InvoiceCopyWithImpl(_$_Invoice _value, $Res Function(_$_Invoice) _then)
      : super(_value, (v) => _then(v as _$_Invoice));

  @override
  _$_Invoice get _value => super._value as _$_Invoice;

  @override
  $Res call({
    Object? number = freezed,
    Object? date = freezed,
    Object? customerName = freezed,
    Object? customerVatNo = freezed,
    Object? total = freezed,
    Object? discountTotal = freezed,
    Object? netTotal = freezed,
    Object? totalAfterVAT = freezed,
    Object? vat = freezed,
    Object? payType = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_Invoice(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerVatNo: customerVatNo == freezed
          ? _value.customerVatNo
          : customerVatNo // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      discountTotal: discountTotal == freezed
          ? _value.discountTotal
          : discountTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      netTotal: netTotal == freezed
          ? _value.netTotal
          : netTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAfterVAT: totalAfterVAT == freezed
          ? _value.totalAfterVAT
          : totalAfterVAT // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      payType: payType == freezed
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Invoice implements _Invoice {
  _$_Invoice(
      {@JsonKey(name: "invno") required this.number,
      @JsonKey(name: "invdate") this.date,
      @JsonKey(name: "CustName") this.customerName,
      @JsonKey(name: "customerVATno") this.customerVatNo,
      this.total,
      @JsonKey(name: "DiscountTotal") this.discountTotal,
      this.netTotal,
      @JsonKey(name: "TotAfterVAT") this.totalAfterVAT,
      @JsonKey(name: "VATamount") this.vat,
      @JsonKey(name: "PayType") this.payType,
      @JsonKey(name: "invoiceItems") final List<InvoiceItem>? items})
      : _items = items;

  factory _$_Invoice.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceFromJson(json);

  @override
  @JsonKey(name: "invno")
  final int number;
  @override
  @JsonKey(name: "invdate")
  final String? date;
  @override
  @JsonKey(name: "CustName")
  final String? customerName;
  @override
  @JsonKey(name: "customerVATno")
  final int? customerVatNo;
  @override
  final double? total;
  @override
  @JsonKey(name: "DiscountTotal")
  final double? discountTotal;
  @override
  final double? netTotal;
  @override
  @JsonKey(name: "TotAfterVAT")
  final double? totalAfterVAT;
  @override
  @JsonKey(name: "VATamount")
  final double? vat;
  @override
  @JsonKey(name: "PayType")
  final String? payType;
  final List<InvoiceItem>? _items;
  @override
  @JsonKey(name: "invoiceItems")
  List<InvoiceItem>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Invoice(number: $number, date: $date, customerName: $customerName, customerVatNo: $customerVatNo, total: $total, discountTotal: $discountTotal, netTotal: $netTotal, totalAfterVAT: $totalAfterVAT, vat: $vat, payType: $payType, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Invoice &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.customerVatNo, customerVatNo) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.discountTotal, discountTotal) &&
            const DeepCollectionEquality().equals(other.netTotal, netTotal) &&
            const DeepCollectionEquality()
                .equals(other.totalAfterVAT, totalAfterVAT) &&
            const DeepCollectionEquality().equals(other.vat, vat) &&
            const DeepCollectionEquality().equals(other.payType, payType) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(customerVatNo),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(discountTotal),
      const DeepCollectionEquality().hash(netTotal),
      const DeepCollectionEquality().hash(totalAfterVAT),
      const DeepCollectionEquality().hash(vat),
      const DeepCollectionEquality().hash(payType),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_InvoiceCopyWith<_$_Invoice> get copyWith =>
      __$$_InvoiceCopyWithImpl<_$_Invoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceToJson(this);
  }
}

abstract class _Invoice implements Invoice {
  factory _Invoice(
          {@JsonKey(name: "invno") required final int number,
          @JsonKey(name: "invdate") final String? date,
          @JsonKey(name: "CustName") final String? customerName,
          @JsonKey(name: "customerVATno") final int? customerVatNo,
          final double? total,
          @JsonKey(name: "DiscountTotal") final double? discountTotal,
          final double? netTotal,
          @JsonKey(name: "TotAfterVAT") final double? totalAfterVAT,
          @JsonKey(name: "VATamount") final double? vat,
          @JsonKey(name: "PayType") final String? payType,
          @JsonKey(name: "invoiceItems") final List<InvoiceItem>? items}) =
      _$_Invoice;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$_Invoice.fromJson;

  @override
  @JsonKey(name: "invno")
  int get number => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invdate")
  String? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CustName")
  String? get customerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customerVATno")
  int? get customerVatNo => throw _privateConstructorUsedError;
  @override
  double? get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "DiscountTotal")
  double? get discountTotal => throw _privateConstructorUsedError;
  @override
  double? get netTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "TotAfterVAT")
  double? get totalAfterVAT => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "VATamount")
  double? get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "PayType")
  String? get payType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoiceItems")
  List<InvoiceItem>? get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceCopyWith<_$_Invoice> get copyWith =>
      throw _privateConstructorUsedError;
}

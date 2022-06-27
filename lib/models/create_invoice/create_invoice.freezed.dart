// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateInvoice _$CreateInvoiceFromJson(Map<String, dynamic> json) {
  return _CreateInvoice.fromJson(json);
}

/// @nodoc
mixin _$CreateInvoice {
  @JsonKey(name: "BranchSubno")
  int? get branchSubno => throw _privateConstructorUsedError;
  @JsonKey(name: "whno")
  int? get warehouseNo => throw _privateConstructorUsedError;
  @JsonKey(name: "Accno")
  int? get accNo => throw _privateConstructorUsedError;
  @JsonKey(name: "SaleAccno")
  int? get saleAccountNo => throw _privateConstructorUsedError;
  @JsonKey(name: "AccName")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customerVatNo")
  int? get customerVatNo => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "PayType")
  int? get payType => throw _privateConstructorUsedError;
  @JsonKey(name: "Createduserno")
  int? get createdUserNo => throw _privateConstructorUsedError;
  @JsonKey(name: "Custno")
  int? get customerNo => throw _privateConstructorUsedError;
  List<InvoiceItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateInvoiceCopyWith<CreateInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateInvoiceCopyWith<$Res> {
  factory $CreateInvoiceCopyWith(
          CreateInvoice value, $Res Function(CreateInvoice) then) =
      _$CreateInvoiceCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "BranchSubno") int? branchSubno,
      @JsonKey(name: "whno") int? warehouseNo,
      @JsonKey(name: "Accno") int? accNo,
      @JsonKey(name: "SaleAccno") int? saleAccountNo,
      @JsonKey(name: "AccName") String? customerName,
      @JsonKey(name: "customerVatNo") int? customerVatNo,
      double total,
      @JsonKey(name: "notes") String notes,
      @JsonKey(name: "PayType") int? payType,
      @JsonKey(name: "Createduserno") int? createdUserNo,
      @JsonKey(name: "Custno") int? customerNo,
      List<InvoiceItem> items});
}

/// @nodoc
class _$CreateInvoiceCopyWithImpl<$Res>
    implements $CreateInvoiceCopyWith<$Res> {
  _$CreateInvoiceCopyWithImpl(this._value, this._then);

  final CreateInvoice _value;
  // ignore: unused_field
  final $Res Function(CreateInvoice) _then;

  @override
  $Res call({
    Object? branchSubno = freezed,
    Object? warehouseNo = freezed,
    Object? accNo = freezed,
    Object? saleAccountNo = freezed,
    Object? customerName = freezed,
    Object? customerVatNo = freezed,
    Object? total = freezed,
    Object? notes = freezed,
    Object? payType = freezed,
    Object? createdUserNo = freezed,
    Object? customerNo = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      branchSubno: branchSubno == freezed
          ? _value.branchSubno
          : branchSubno // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouseNo: warehouseNo == freezed
          ? _value.warehouseNo
          : warehouseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      accNo: accNo == freezed
          ? _value.accNo
          : accNo // ignore: cast_nullable_to_non_nullable
              as int?,
      saleAccountNo: saleAccountNo == freezed
          ? _value.saleAccountNo
          : saleAccountNo // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as double,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      payType: payType == freezed
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as int?,
      createdUserNo: createdUserNo == freezed
          ? _value.createdUserNo
          : createdUserNo // ignore: cast_nullable_to_non_nullable
              as int?,
      customerNo: customerNo == freezed
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateInvoiceCopyWith<$Res>
    implements $CreateInvoiceCopyWith<$Res> {
  factory _$$_CreateInvoiceCopyWith(
          _$_CreateInvoice value, $Res Function(_$_CreateInvoice) then) =
      __$$_CreateInvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "BranchSubno") int? branchSubno,
      @JsonKey(name: "whno") int? warehouseNo,
      @JsonKey(name: "Accno") int? accNo,
      @JsonKey(name: "SaleAccno") int? saleAccountNo,
      @JsonKey(name: "AccName") String? customerName,
      @JsonKey(name: "customerVatNo") int? customerVatNo,
      double total,
      @JsonKey(name: "notes") String notes,
      @JsonKey(name: "PayType") int? payType,
      @JsonKey(name: "Createduserno") int? createdUserNo,
      @JsonKey(name: "Custno") int? customerNo,
      List<InvoiceItem> items});
}

/// @nodoc
class __$$_CreateInvoiceCopyWithImpl<$Res>
    extends _$CreateInvoiceCopyWithImpl<$Res>
    implements _$$_CreateInvoiceCopyWith<$Res> {
  __$$_CreateInvoiceCopyWithImpl(
      _$_CreateInvoice _value, $Res Function(_$_CreateInvoice) _then)
      : super(_value, (v) => _then(v as _$_CreateInvoice));

  @override
  _$_CreateInvoice get _value => super._value as _$_CreateInvoice;

  @override
  $Res call({
    Object? branchSubno = freezed,
    Object? warehouseNo = freezed,
    Object? accNo = freezed,
    Object? saleAccountNo = freezed,
    Object? customerName = freezed,
    Object? customerVatNo = freezed,
    Object? total = freezed,
    Object? notes = freezed,
    Object? payType = freezed,
    Object? createdUserNo = freezed,
    Object? customerNo = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_CreateInvoice(
      branchSubno: branchSubno == freezed
          ? _value.branchSubno
          : branchSubno // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouseNo: warehouseNo == freezed
          ? _value.warehouseNo
          : warehouseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      accNo: accNo == freezed
          ? _value.accNo
          : accNo // ignore: cast_nullable_to_non_nullable
              as int?,
      saleAccountNo: saleAccountNo == freezed
          ? _value.saleAccountNo
          : saleAccountNo // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as double,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      payType: payType == freezed
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as int?,
      createdUserNo: createdUserNo == freezed
          ? _value.createdUserNo
          : createdUserNo // ignore: cast_nullable_to_non_nullable
              as int?,
      customerNo: customerNo == freezed
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateInvoice extends _CreateInvoice {
  _$_CreateInvoice(
      {@JsonKey(name: "BranchSubno") this.branchSubno,
      @JsonKey(name: "whno") this.warehouseNo,
      @JsonKey(name: "Accno") this.accNo,
      @JsonKey(name: "SaleAccno") this.saleAccountNo,
      @JsonKey(name: "AccName") this.customerName,
      @JsonKey(name: "customerVatNo") this.customerVatNo,
      this.total = 0.0,
      @JsonKey(name: "notes") this.notes = "",
      @JsonKey(name: "PayType") this.payType,
      @JsonKey(name: "Createduserno") this.createdUserNo,
      @JsonKey(name: "Custno") this.customerNo,
      final List<InvoiceItem> items = const []})
      : _items = items,
        super._();

  factory _$_CreateInvoice.fromJson(Map<String, dynamic> json) =>
      _$$_CreateInvoiceFromJson(json);

  @override
  @JsonKey(name: "BranchSubno")
  final int? branchSubno;
  @override
  @JsonKey(name: "whno")
  final int? warehouseNo;
  @override
  @JsonKey(name: "Accno")
  final int? accNo;
  @override
  @JsonKey(name: "SaleAccno")
  final int? saleAccountNo;
  @override
  @JsonKey(name: "AccName")
  final String? customerName;
  @override
  @JsonKey(name: "customerVatNo")
  final int? customerVatNo;
  @override
  @JsonKey()
  final double total;
  @override
  @JsonKey(name: "notes")
  final String notes;
  @override
  @JsonKey(name: "PayType")
  final int? payType;
  @override
  @JsonKey(name: "Createduserno")
  final int? createdUserNo;
  @override
  @JsonKey(name: "Custno")
  final int? customerNo;
  final List<InvoiceItem> _items;
  @override
  @JsonKey()
  List<InvoiceItem> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CreateInvoice(branchSubno: $branchSubno, warehouseNo: $warehouseNo, accNo: $accNo, saleAccountNo: $saleAccountNo, customerName: $customerName, customerVatNo: $customerVatNo, total: $total, notes: $notes, payType: $payType, createdUserNo: $createdUserNo, customerNo: $customerNo, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateInvoice &&
            const DeepCollectionEquality()
                .equals(other.branchSubno, branchSubno) &&
            const DeepCollectionEquality()
                .equals(other.warehouseNo, warehouseNo) &&
            const DeepCollectionEquality().equals(other.accNo, accNo) &&
            const DeepCollectionEquality()
                .equals(other.saleAccountNo, saleAccountNo) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.customerVatNo, customerVatNo) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality().equals(other.payType, payType) &&
            const DeepCollectionEquality()
                .equals(other.createdUserNo, createdUserNo) &&
            const DeepCollectionEquality()
                .equals(other.customerNo, customerNo) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(branchSubno),
      const DeepCollectionEquality().hash(warehouseNo),
      const DeepCollectionEquality().hash(accNo),
      const DeepCollectionEquality().hash(saleAccountNo),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(customerVatNo),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(notes),
      const DeepCollectionEquality().hash(payType),
      const DeepCollectionEquality().hash(createdUserNo),
      const DeepCollectionEquality().hash(customerNo),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_CreateInvoiceCopyWith<_$_CreateInvoice> get copyWith =>
      __$$_CreateInvoiceCopyWithImpl<_$_CreateInvoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateInvoiceToJson(this);
  }
}

abstract class _CreateInvoice extends CreateInvoice {
  factory _CreateInvoice(
      {@JsonKey(name: "BranchSubno") final int? branchSubno,
      @JsonKey(name: "whno") final int? warehouseNo,
      @JsonKey(name: "Accno") final int? accNo,
      @JsonKey(name: "SaleAccno") final int? saleAccountNo,
      @JsonKey(name: "AccName") final String? customerName,
      @JsonKey(name: "customerVatNo") final int? customerVatNo,
      final double total,
      @JsonKey(name: "notes") final String notes,
      @JsonKey(name: "PayType") final int? payType,
      @JsonKey(name: "Createduserno") final int? createdUserNo,
      @JsonKey(name: "Custno") final int? customerNo,
      final List<InvoiceItem> items}) = _$_CreateInvoice;
  _CreateInvoice._() : super._();

  factory _CreateInvoice.fromJson(Map<String, dynamic> json) =
      _$_CreateInvoice.fromJson;

  @override
  @JsonKey(name: "BranchSubno")
  int? get branchSubno => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "whno")
  int? get warehouseNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Accno")
  int? get accNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "SaleAccno")
  int? get saleAccountNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "AccName")
  String? get customerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customerVatNo")
  int? get customerVatNo => throw _privateConstructorUsedError;
  @override
  double get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "notes")
  String get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "PayType")
  int? get payType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Createduserno")
  int? get createdUserNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Custno")
  int? get customerNo => throw _privateConstructorUsedError;
  @override
  List<InvoiceItem> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateInvoiceCopyWith<_$_CreateInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

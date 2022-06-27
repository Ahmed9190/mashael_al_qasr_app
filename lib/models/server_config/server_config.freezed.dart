// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'server_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerConfig _$ServerConfigFromJson(Map<String, dynamic> json) {
  return _ServerConfig.fromJson(json);
}

/// @nodoc
mixin _$ServerConfig {
  double get vatRate => throw _privateConstructorUsedError;
  double get version => throw _privateConstructorUsedError;
  @JsonKey(name: "SaleAccno")
  int get saleAccno => throw _privateConstructorUsedError;
  @JsonKey(name: "CashSaleAccno")
  int get cashSaleAccno => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerConfigCopyWith<ServerConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerConfigCopyWith<$Res> {
  factory $ServerConfigCopyWith(
          ServerConfig value, $Res Function(ServerConfig) then) =
      _$ServerConfigCopyWithImpl<$Res>;
  $Res call(
      {double vatRate,
      double version,
      @JsonKey(name: "SaleAccno") int saleAccno,
      @JsonKey(name: "CashSaleAccno") int cashSaleAccno});
}

/// @nodoc
class _$ServerConfigCopyWithImpl<$Res> implements $ServerConfigCopyWith<$Res> {
  _$ServerConfigCopyWithImpl(this._value, this._then);

  final ServerConfig _value;
  // ignore: unused_field
  final $Res Function(ServerConfig) _then;

  @override
  $Res call({
    Object? vatRate = freezed,
    Object? version = freezed,
    Object? saleAccno = freezed,
    Object? cashSaleAccno = freezed,
  }) {
    return _then(_value.copyWith(
      vatRate: vatRate == freezed
          ? _value.vatRate
          : vatRate // ignore: cast_nullable_to_non_nullable
              as double,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as double,
      saleAccno: saleAccno == freezed
          ? _value.saleAccno
          : saleAccno // ignore: cast_nullable_to_non_nullable
              as int,
      cashSaleAccno: cashSaleAccno == freezed
          ? _value.cashSaleAccno
          : cashSaleAccno // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ServerConfigCopyWith<$Res>
    implements $ServerConfigCopyWith<$Res> {
  factory _$$_ServerConfigCopyWith(
          _$_ServerConfig value, $Res Function(_$_ServerConfig) then) =
      __$$_ServerConfigCopyWithImpl<$Res>;
  @override
  $Res call(
      {double vatRate,
      double version,
      @JsonKey(name: "SaleAccno") int saleAccno,
      @JsonKey(name: "CashSaleAccno") int cashSaleAccno});
}

/// @nodoc
class __$$_ServerConfigCopyWithImpl<$Res>
    extends _$ServerConfigCopyWithImpl<$Res>
    implements _$$_ServerConfigCopyWith<$Res> {
  __$$_ServerConfigCopyWithImpl(
      _$_ServerConfig _value, $Res Function(_$_ServerConfig) _then)
      : super(_value, (v) => _then(v as _$_ServerConfig));

  @override
  _$_ServerConfig get _value => super._value as _$_ServerConfig;

  @override
  $Res call({
    Object? vatRate = freezed,
    Object? version = freezed,
    Object? saleAccno = freezed,
    Object? cashSaleAccno = freezed,
  }) {
    return _then(_$_ServerConfig(
      vatRate: vatRate == freezed
          ? _value.vatRate
          : vatRate // ignore: cast_nullable_to_non_nullable
              as double,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as double,
      saleAccno: saleAccno == freezed
          ? _value.saleAccno
          : saleAccno // ignore: cast_nullable_to_non_nullable
              as int,
      cashSaleAccno: cashSaleAccno == freezed
          ? _value.cashSaleAccno
          : cashSaleAccno // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerConfig implements _ServerConfig {
  _$_ServerConfig(
      {required this.vatRate,
      required this.version,
      @JsonKey(name: "SaleAccno") required this.saleAccno,
      @JsonKey(name: "CashSaleAccno") required this.cashSaleAccno});

  factory _$_ServerConfig.fromJson(Map<String, dynamic> json) =>
      _$$_ServerConfigFromJson(json);

  @override
  final double vatRate;
  @override
  final double version;
  @override
  @JsonKey(name: "SaleAccno")
  final int saleAccno;
  @override
  @JsonKey(name: "CashSaleAccno")
  final int cashSaleAccno;

  @override
  String toString() {
    return 'ServerConfig(vatRate: $vatRate, version: $version, saleAccno: $saleAccno, cashSaleAccno: $cashSaleAccno)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerConfig &&
            const DeepCollectionEquality().equals(other.vatRate, vatRate) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.saleAccno, saleAccno) &&
            const DeepCollectionEquality()
                .equals(other.cashSaleAccno, cashSaleAccno));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vatRate),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(saleAccno),
      const DeepCollectionEquality().hash(cashSaleAccno));

  @JsonKey(ignore: true)
  @override
  _$$_ServerConfigCopyWith<_$_ServerConfig> get copyWith =>
      __$$_ServerConfigCopyWithImpl<_$_ServerConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerConfigToJson(this);
  }
}

abstract class _ServerConfig implements ServerConfig {
  factory _ServerConfig(
          {required final double vatRate,
          required final double version,
          @JsonKey(name: "SaleAccno") required final int saleAccno,
          @JsonKey(name: "CashSaleAccno") required final int cashSaleAccno}) =
      _$_ServerConfig;

  factory _ServerConfig.fromJson(Map<String, dynamic> json) =
      _$_ServerConfig.fromJson;

  @override
  double get vatRate => throw _privateConstructorUsedError;
  @override
  double get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "SaleAccno")
  int get saleAccno => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CashSaleAccno")
  int get cashSaleAccno => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ServerConfigCopyWith<_$_ServerConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

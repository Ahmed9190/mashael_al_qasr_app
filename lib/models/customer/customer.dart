import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  factory Customer({
    @JsonKey(name: "AccNo") int? number,
    @JsonKey(name: "AccName") String? name,
    @JsonKey(name: "VATno") int? vatNo,
    double? debts,
    @JsonKey(name: "CreditLimit") double? creditLimit,
  }) = _Customer;

  factory Customer.fromJson(dynamic json) => _$CustomerFromJson(json);

  static Customer? getCustomerByCustomerNoFromList(
      int? customerNo, List<Customer> customers) {
    //TODO: you've removed the firstWhereOrNull, so you have to handle returning null manually
    return customers.firstWhere((Customer customer) {
      return customer.number == customerNo;
    });
  }

  static Future<Customer>? getCustomerFromApi(int? customerNo) {
    if (customerNo == null) return null;

    return Api.get<Customer>("/customer/$customerNo",
        fromJson: Customer.fromJson);
  }
}

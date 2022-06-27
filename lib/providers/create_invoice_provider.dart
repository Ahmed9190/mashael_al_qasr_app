import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/models/create_invoice_item/create_invoice_item.dart';
import 'package:mashael_al_qasr_5/models/invoice/invoice.dart';
import 'package:mashael_al_qasr_5/models/string_with_key/string_with_key.dart';
import 'package:mashael_al_qasr_5/providers/config_provider.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/regexp.dart';
import 'package:provider/provider.dart';

import 'package:mashael_al_qasr_5/models/create_invoice/create_invoice.dart';
import 'package:mashael_al_qasr_5/models/customer/customer.dart';
import 'package:mashael_al_qasr_5/models/invoice_item/invoice_item.dart';
import 'package:mashael_al_qasr_5/models/user/user.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';

class CreateInvoiceProviderContainer extends StatefulWidget {
  final Widget child;
  const CreateInvoiceProviderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<CreateInvoiceProviderContainer> createState() =>
      _CreateInvoiceProviderContainerState();
}

class _CreateInvoiceProviderContainerState
    extends State<CreateInvoiceProviderContainer> {
  late final CreateInvoiceProvider _createInvoiceProvider;

  @override
  void initState() {
    super.initState();
    _createInvoiceProvider = CreateInvoiceProvider();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _createInvoiceProvider,
      child: widget.child,
    );
  }
}

class CreateInvoiceProvider extends ChangeNotifier {
  late CreateInvoice createInvoice;
  static final List<CreateInvoiceItem> _addedItems = [];
  static List<CreateInvoiceItem> get addedItems => _addedItems;
  double vat = 0.0;

  ApiStatus _creatingStatus = ApiStatus.initial;
  ApiStatus get creatingStatus => _creatingStatus;
  set creatingStatus(ApiStatus newStatus) {
    _creatingStatus = newStatus;
    notifyListeners();
  }

  CreateInvoiceProvider() {
    User user = UserProvider.user!;
    createInvoice = CreateInvoice(
      branchSubno: user.branchSubNo,
      warehouseNo: user.storeNo,
      createdUserNo: user.userNo,
      saleAccountNo: user.saleAccountNo,
    );
  }

  void changePayType(StringWithKey payType) {
    createInvoice = createInvoice.copyWith(
      payType: payType.key,
    );
    notifyListeners();
  }

  void changeCustomer(Customer customer) {
    createInvoice = createInvoice.copyWith(
      customerNo: customer.number,
      customerName: (customer.number != 0) ? customer.name : null,
      customerVatNo: (customer.number != 0) ? customer.vatNo : null,
    );
    notifyListeners();
  }

  void changeCustomerName(String customerName) {
    createInvoice = createInvoice.copyWith(
      customerName: customerName,
    );
    notifyListeners();
  }

  void changeCustomerVatNo(String customerVatNo) {
    if (digitsRegExp.hasMatch(customerVatNo)) {
      createInvoice = createInvoice.copyWith(
        customerVatNo: int.parse(customerVatNo),
      );
    }
    notifyListeners();
  }

  void changeNote(String notes) {
    createInvoice = createInvoice.copyWith(notes: notes);
    notifyListeners();
  }

  //-------------------Item----------------------

  void addItem(CreateInvoiceItem item) {
    _addedItems.add(item);

    updateTotalAndVat();
  }

  void removeItemByIndex(int index) {
    _addedItems.removeAt(index);
    updateTotalAndVat();
  }

  void clearItems() {
    addedItems.clear();
  }

  void changeQtyByIndex(int qty, int index) {
    updateItemByIndex(index, qty: qty);
  }

  void changeSaleTypeByIndex(SaleTypeOptions saleType, int index) {
    updateItemByIndex(index, saleType: saleType);
  }

  void updateItemByIndex(
    int index, {
    SaleTypeOptions? saleType,
    int? qty,
  }) {
    CreateInvoiceItem item = _addedItems[index];
    _addedItems[index] = item.copyWith(
      saleType: saleType ?? item.saleType,
      qty: qty ?? item.qty,
    );
    updateTotalAndVat();
  }

  //----------------Summary----------------
  void fillInRestData() {
    autoSetAccNo();
    addItemsToCreateInvoice();
  }

  void autoSetAccNo() {
    createInvoice = createInvoice.copyWith(
      accNo: createInvoice.getAccountNo(),
    );
  }

  void addItemsToCreateInvoice() {
    createInvoice = createInvoice.copyWith(
      items: _addedItems.map<InvoiceItem>((CreateInvoiceItem item) {
        return InvoiceItem(
          name: item.name,
          number: item.number,
          qty: item.calculatedQty,
          freeQty: item.freeQty,
          saleType: item.getSaleTypeNumber(),
          unitPrice: item.calculateUnitPrice,
        );
      }).toList(),
    );
  }

  void updateTotalAndVat() {
    double total = calculateTotal();
    createInvoice = createInvoice.copyWith(total: total);
    vat = total * ConfigProvider.serverConfig!.vatRate;
    notifyListeners();
  }

  double calculateTotal() {
    return _addedItems.fold<double>(
      0.0,
      (double accumlatedTotal, CreateInvoiceItem item) {
        return accumlatedTotal + item.calculateTotal;
      },
    );
  }

  Future<void> checkDataIsFilled(BuildContext context) async {
    if (createInvoice.payType == null) {
      throw ErrorDescription(t(context).selectPaymentType);
    }
    if (createInvoice.customerNo == null) {
      throw ErrorDescription(t(context).selectCustomer);
    }
    // change dropdown value if it is عميل نقدي and pay type = 3
    if (createInvoice.customerName == null && createInvoice.payType == 3) {
      throw ErrorDescription(t(context).canNotCreateInvoiceOnCredit);
    }
    if (createInvoice.customerName == null) {
      throw ErrorDescription(t(context).typeCustomerName);
    }
    if (createInvoice.payType == 3 &&
        !RegExp(r"\d").hasMatch(createInvoice.customerVatNo.toString())) {
      throw ErrorDescription(t(context).typeVatNumber);
    }
    if (createInvoice.items.isEmpty) {
      throw ErrorDescription(t(context).selectAtLeastOneItem);
    }

    if (createInvoice.payType == 3) {
      num creditRestriction =
          await Api.get<num>("/credit-restrictions", queryParameters: {
        "branchSubno": UserProvider.user!.branchSubNo,
        "AccNo": createInvoice.customerNo!,
      });
      if (createInvoice.total + vat > creditRestriction) {
        if (creditRestriction == 0) {
          throw ErrorDescription(t(context).canNotBuyOnCredit);
        }
        throw ErrorDescription(
          "${t(context).maxAmountToPurchaseIs} $creditRestriction",
        );
      }
    }
  }

  Future<Invoice> sendInvoiceToApi(BuildContext context) async {
    creatingStatus = ApiStatus.loading;
    try {
      Invoice invoice = await Api.post<Invoice>("/invoice",
          data: createInvoice.toJson(), fromJson: Invoice.fromJson);
      creatingStatus = ApiStatus.loaded;

      clearItems();
      return invoice;
    } catch (e) {
      creatingStatus = ApiStatus.error;
      throw ErrorDescription(
        t(context).errorWhileSavingInvoice,
      );
    } finally {
      notifyListeners();
    }
  }

  @override
  String toString() =>
      'CreateInvoiceProvider(createInvoice: $createInvoice, vat: $vat)';
}

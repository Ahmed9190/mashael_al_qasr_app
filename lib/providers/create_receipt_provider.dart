import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/models/create_receipt/create_receipt.dart';
import 'package:mashael_al_qasr_5/models/receipt/receipt.dart';
import 'package:mashael_al_qasr_5/models/user/user.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/regexp.dart';
import 'package:provider/provider.dart';

class CreateReceiptProviderContainer extends StatefulWidget {
  final Widget child;
  const CreateReceiptProviderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<CreateReceiptProviderContainer> createState() =>
      _CreateReceiptProviderContainerState();
}

class _CreateReceiptProviderContainerState
    extends State<CreateReceiptProviderContainer> {
  late final CreateReceiptProvider _createReceiptProvider;

  @override
  void initState() {
    super.initState();
    _createReceiptProvider = CreateReceiptProvider();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _createReceiptProvider,
      child: widget.child,
    );
  }
}

class CreateReceiptProvider extends ChangeNotifier {
  late CreateReceipt createReceipt;

  CreateReceiptProvider() {
    User user = UserProvider.user!;

    createReceipt = CreateReceipt(
      branchSubno: user.branchSubNo,
      cashAccNo: user.cashAccNo,
      userNo: user.userNo,
    );
  }
  void setCashAccNo(int cashAccNo) {
    createReceipt = createReceipt.copyWith(
      cashAccNo: cashAccNo,
    );
    notifyListeners();
  }

  void setCustomerNo(int customerNo) {
    createReceipt = createReceipt.copyWith(
      customerNo: customerNo,
    );
    notifyListeners();
  }

  void setMoneyAmount(String moneyAmountString) {
    if (moneyAmountString == "") {
      createReceipt = createReceipt.copyWith(
        moneyAmount: 0.0,
      );
    }
    if (moneyRegExp.hasMatch(moneyAmountString)) {
      double moneyAmount = double.parse(moneyAmountString.replaceAll(",", ""));
      createReceipt = createReceipt.copyWith(
        moneyAmount: moneyAmount,
      );
      notifyListeners();
    }
  }

  void setDescription(String description) {
    createReceipt = createReceipt.copyWith(
      description: description,
    );
    notifyListeners();
  }

  void checkFieldsIsFilled(BuildContext context) {
    if (createReceipt.customerNo == null) {
      throw ErrorDescription(t(context).selectCustomer);
    }
    if (createReceipt.moneyAmount == null || createReceipt.moneyAmount == 0.0) {
      throw ErrorDescription(t(context).enterMoneyAmount);
    }
    if (createReceipt.description == null ||
        createReceipt.description!.trim() == "") {
      throw ErrorDescription(t(context).typeStatement);
    }
  }

  ApiStatus status = ApiStatus.initial;

  Future<Receipt?> create(BuildContext context) async {
    if (status == ApiStatus.loading) return null;

    try {
      trimDescription();
      status = ApiStatus.loading;
      Receipt receipt = await Api.post<Receipt>(
        "/receipt",
        data: createReceipt.toJson(),
        fromJson: Receipt.fromJson,
      );
      status = ApiStatus.loaded;
      return receipt;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      status = ApiStatus.error;
      throw ErrorDescription(t(context).errorWhileSavingReceipt);
    } finally {
      notifyListeners();
    }
  }

  void trimDescription() {
    createReceipt = createReceipt.copyWith(
      description: createReceipt.description?.trim(),
    );
  }
}

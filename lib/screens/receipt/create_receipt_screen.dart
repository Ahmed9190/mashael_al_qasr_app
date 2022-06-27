import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mashael_al_qasr_5/components/alert_dialog.dart';
import 'package:mashael_al_qasr_5/components/custom_button.dart';
import 'package:mashael_al_qasr_5/components/customers_dropdown.dart';
import 'package:mashael_al_qasr_5/components/gap.dart';
import 'package:mashael_al_qasr_5/components/inputs/input.dart';
import 'package:mashael_al_qasr_5/components/screen_layout.dart';
import 'package:mashael_al_qasr_5/components/with_loading.dart';
import 'package:mashael_al_qasr_5/models/create_receipt/create_receipt.dart';
import 'package:mashael_al_qasr_5/models/customer/customer.dart';
import 'package:mashael_al_qasr_5/models/receipt/receipt.dart';
import 'package:mashael_al_qasr_5/providers/create_receipt_provider.dart';
import 'package:mashael_al_qasr_5/screens/receipt/print_receipt_screen.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/regexp.dart';
import 'package:mashael_al_qasr_5/utils/show_snackbar.dart';
import 'package:provider/provider.dart';

class CreateReceiptScreen extends StatefulWidget {
  const CreateReceiptScreen({Key? key}) : super(key: key);

  @override
  State<CreateReceiptScreen> createState() => _CreateReceiptScreenState();
}

class _CreateReceiptScreenState extends State<CreateReceiptScreen> {
  late final TextEditingController _moneyAmountController;
  late final TextEditingController _descriptionController;
  late final CreateReceiptProvider createReceiptProvider =
      context.watch<CreateReceiptProvider>();

  @override
  void initState() {
    super.initState();
    _moneyAmountController = TextEditingController();
    _descriptionController = TextEditingController();
    _moneyAmountController.addListener(_onChangeMoneyAmount);
    _descriptionController.addListener(onChangeDescription);
  }

  void _onChangeMoneyAmount() {
    String moneyAmount = _moneyAmountController.text;
    createReceiptProvider.setMoneyAmount(moneyAmount);
  }

  void onChangeDescription() {
    String notes = _descriptionController.text;
    createReceiptProvider.setDescription(notes);
  }

  @override
  void dispose() {
    _moneyAmountController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WithLoading(
      isLoading: createReceiptProvider.status == ApiStatus.loading,
      child: ScreenLayout(
        title: t(context).createReceipt,
        showBackButton: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: screenPadding,
            vertical: 5,
          ),
          child: SingleChildScrollView(
            child: Gap(
              children: [
                const SizedBox(height: 7.5),
                Builder(builder: (context) {
                  CreateReceipt createReceipt =
                      createReceiptProvider.createReceipt;
                  final int? customerNo = createReceipt.customerNo;

                  return CustomersDropdown(
                    selectedCustomerNo: customerNo,
                    onSelect: _onChangeCustomer,
                  );
                }),
                Input(
                  controller: _moneyAmountController,
                  label: t(context).moneyAmount,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(digitsAndPointRegExp),
                    CurrencyTextInputFormatter(symbol: ""),
                  ],
                ),
                Input(
                  controller: _descriptionController,
                  label: t(context).statement,
                  minLines: 6,
                  keyboardType: TextInputType.multiline,
                ),
                CustomButton(
                  buttonColors: primaryColor,
                  textColors: Colors.white,
                  label: t(context).print,
                  icon: Icons.print,
                  onPressed: _onSubmit,
                  // createReceiptProvider.checkFieldsIsFilled,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onSubmit() {
    FocusScope.of(context).unfocus();

    try {
      createReceiptProvider.checkFieldsIsFilled(context);
      showConfirmationDialog(
        context: context,
        confirmationSentance: t(context).sureToPrintReceipt,
        onPressedConfirm: _onPressedConfirm,
      );
    } on ErrorDescription catch (e) {
      showSnackBar(context, e.toDescription());
    }
  }

  void _onChangeCustomer(customer) {
    customer = customer as Customer;
    createReceiptProvider.setCustomerNo(customer.number!);
  }

  void _onPressedConfirm() async {
    try {
      Receipt? receipt = await createReceiptProvider.create(context);
      Navigator.of(context).pop();
      if (receipt != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) {
              return PrintReceiptScreen(receipt: receipt, autoPrint: true);
            },
          ),
        ).then((value) => Navigator.of(context).pop());
      }
    } on ErrorDescription catch (e) {
      if (kDebugMode) {
        print(e);
      }
      showSnackBar(context, e.toDescription());
    }
  }
}

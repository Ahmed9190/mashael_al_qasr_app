import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/alert_dialog.dart';
import 'package:mashael_al_qasr_5/components/create_invoice_summary_details.dart';
import 'package:mashael_al_qasr_5/components/custom_button.dart';
import 'package:mashael_al_qasr_5/components/customers_dropdown.dart';
import 'package:mashael_al_qasr_5/components/dropdown.dart';
import 'package:mashael_al_qasr_5/components/gap.dart';
import 'package:mashael_al_qasr_5/components/inputs/input.dart';
import 'package:mashael_al_qasr_5/components/item_added_in_create_invoice.dart';
import 'package:mashael_al_qasr_5/components/screen_layout.dart';
import 'package:mashael_al_qasr_5/components/with_loading.dart';
import 'package:mashael_al_qasr_5/models/create_invoice/create_invoice.dart';
import 'package:mashael_al_qasr_5/models/create_invoice_item/create_invoice_item.dart';
import 'package:mashael_al_qasr_5/models/customer/customer.dart';
import 'package:mashael_al_qasr_5/models/invoice/invoice.dart';
import 'package:mashael_al_qasr_5/models/string_with_key/string_with_key.dart';
import 'package:mashael_al_qasr_5/providers/create_invoice_provider.dart';
import 'package:mashael_al_qasr_5/providers/items_provider.dart';
import 'package:mashael_al_qasr_5/screens/item/add_item_screen.dart';
import 'package:mashael_al_qasr_5/screens/print_invoice_screen.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/show_snackbar.dart';
import 'package:provider/provider.dart';

class CreateInvoiceScreen extends StatefulWidget {
  const CreateInvoiceScreen({Key? key}) : super(key: key);

  @override
  State<CreateInvoiceScreen> createState() => _CreateInvoiceScreenState();
}

class _CreateInvoiceScreenState extends State<CreateInvoiceScreen> {
  late final TextEditingController _customerNameController;
  late final TextEditingController _notesController;
  late final TextEditingController _customerVatNoController;

  late final CreateInvoiceProvider _createInvoiceProvider =
      context.watch<CreateInvoiceProvider>();

  Customer? _selectedCustomer;

  @override
  void initState() {
    super.initState();
    _customerNameController = TextEditingController();
    _notesController = TextEditingController();
    _customerVatNoController = TextEditingController();

    _customerNameController.addListener(() {
      _createInvoiceProvider.changeCustomerName(_customerNameController.text);
    });
    _customerVatNoController.addListener(() {
      if (_customerVatNoController.text == "0") {
        _customerVatNoController.clear();
      }
      _createInvoiceProvider.changeCustomerVatNo(_customerVatNoController.text);
    });
    _notesController.addListener(() {
      _createInvoiceProvider.changeNote(_notesController.text);
    });
  }

  @override
  void dispose() {
    _customerNameController.dispose();
    _customerVatNoController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<CreateInvoiceProvider>();
    CreateInvoice createInvoice = _createInvoiceProvider.createInvoice;
    double vat = _createInvoiceProvider.vat;
    List<CreateInvoiceItem> createInvoiceItems =
        CreateInvoiceProvider.addedItems;

    return WithLoading(
      isLoading: _createInvoiceProvider.creatingStatus == ApiStatus.loading,
      child: ScreenLayout(
        title: t(context).createInvoice,
        showBackButton: true,
        onPressBack: () {
          _createInvoiceProvider.clearItems();
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: screenPadding,
            vertical: 5,
          ),
          child: SingleChildScrollView(
            child: Gap(
              children: [
                Dropdown<StringWithKey<int>>(
                  label: t(context).saleType,
                  elements: [
                    StringWithKey<int>(key: 1, name: t(context).cash),
                    StringWithKey<int>(key: 3, name: t(context).credit),
                  ],
                  onChangeValue: _onChangePayType,
                  optionLabel: (StringWithKey<int> option) {
                    return option.name;
                  },
                ),
                Builder(builder: (context) {
                  final isCashPayType = createInvoice.payType == 1;

                  return CustomersDropdown(
                    enableCashCustomer: isCashPayType,
                    selectedCustomerNo: _selectedCustomer?.number,
                    onSelect: _onChangeCustomer,
                  );
                }),
                const SizedBox.shrink(),
                Builder(builder: (BuildContext context) {
                  final bool isCashCustomer = _selectedCustomer?.number! == 0;
                  final isCashPayType = createInvoice.payType == 1;

                  if (isCashCustomer && isCashPayType) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Input(
                        controller: _customerNameController,
                        label: t(context).customerName,
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                }),
                const SizedBox.shrink(),
                Builder(builder: (BuildContext context) {
                  if (_selectedCustomer != null &&
                      _selectedCustomer!.vatNo == null) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Input(
                        controller: _customerVatNoController,
                        label: t(context).vatNumber,
                        type: InputType.number,
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                }),
                Input(
                  controller: _notesController,
                  label: t(context).notes,
                  minLines: 6,
                  textColor: ColorPalette.darkColor,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                ),
                CustomButton(
                  buttonColors: primaryColor,
                  textColors: Colors.white,
                  label: t(context).addItem,
                  onPressed: () => _onPressedAddItem(context),
                  icon: Icons.add,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.all(0.0),
                  itemCount: createInvoiceItems.length,
                  itemBuilder: (context, index) {
                    CreateInvoiceProvider createInvoiceProvider =
                        context.watch<CreateInvoiceProvider>();
                    CreateInvoiceItem createInvoiceItem =
                        CreateInvoiceProvider.addedItems[index];

                    return ItemAddedInCreateInvoice(
                      index: index,
                      createInvoiceItem: createInvoiceItem,
                      onChangeQuantityByIndex:
                          createInvoiceProvider.changeQtyByIndex,
                      onChangeSaleTypeByIndex:
                          createInvoiceProvider.changeSaleTypeByIndex,
                      removeItemByIndex:
                          createInvoiceProvider.removeItemByIndex,
                      maxQty: 23,
                    );
                  },
                ),
                CreateInvoiceSummaryDetails(
                  title: t(context).total,
                  result: createInvoice.total.toStringAsFixed(2),
                ),
                CreateInvoiceSummaryDetails(
                  title: t(context).vat,
                  result: vat.toStringAsFixed(2),
                  // invoiceVatSelector(state).toStringAsFixed(2),
                ),
                CreateInvoiceSummaryDetails(
                  title: t(context).invoiceTotal,
                  result: (createInvoice.total + vat).toStringAsFixed(2),
                ),
                CustomButton(
                  buttonColors: primaryColor,
                  textColors: Colors.white,
                  label: t(context).print,
                  icon: Icons.print,
                  onPressed: _onPressedPrint,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onChangePayType(StringWithKey<int>? payType) {
    if (payType != null) {
      _createInvoiceProvider.changePayType(payType);
      final bool isCashCustomer = _selectedCustomer?.number == 0;
      if (isCashCustomer && payType.name == "آجل") {
        _selectedCustomer = null;
      }
    }
  }

  void _onChangeCustomer(Customer? customer) {
    if (customer != null) {
      _selectedCustomer = customer;
      _createInvoiceProvider.changeCustomer(customer);
    }
  }

  void _onPressedAddItem(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(
          builder: (_) => MultiProvider(
            providers: [
              ChangeNotifierProvider.value(
                value: context.read<ItemsProvider>(),
              ),
              ChangeNotifierProvider.value(
                value: context.read<CreateInvoiceProvider>(),
              ),
            ],
            child: const AddItemScreen(),
          ),
        ))
        .then((value) => FocusScope.of(context).unfocus());
  }

  void _onPressedPrint() async {
    try {
      _createInvoiceProvider.fillInRestData();
      await _createInvoiceProvider.checkDataIsFilled(context);
      showConfirmationDialog(
        context: context,
        confirmationSentance: t(context).sureToPrintInvoice,
        onPressedConfirm: _onConfirmPrinting,
      );
    } on ErrorDescription catch (e) {
      showSnackBar(context, e.toDescription());
    }
  }

  Future<void> _onConfirmPrinting() async {
    try {
      Invoice invoice = await _createInvoiceProvider.sendInvoiceToApi(context);
      Navigator.of(context).pop();
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => PrintInvoiceScreen(
            invoice: invoice,
            autoPrint: true,
          ),
        ),
      );
    } on ErrorDescription catch (e) {
      showSnackBar(context, e.toDescription());
      if (kDebugMode) {
        print(e);
      }
    }
  }
}

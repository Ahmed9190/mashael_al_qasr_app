import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/dropdown/searchable_dropdown/searchable_dropdown_call_api.dart';
import 'package:mashael_al_qasr_5/providers/searchable_table_provider.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:provider/provider.dart';

import 'package:mashael_al_qasr_5/models/customer/customer.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';

class CustomersDropdown extends StatefulWidget {
  final int? selectedCustomerNo;
  final bool enableCashCustomer;
  final void Function()? onClear;
  final void Function(Customer?) onSelect;

  const CustomersDropdown({
    Key? key,
    this.selectedCustomerNo,
    this.enableCashCustomer = false,
    this.onClear,
    required this.onSelect,
  }) : super(key: key);

  @override
  State<CustomersDropdown> createState() => _CustomersDropdownState();
}

class _CustomersDropdownState extends State<CustomersDropdown> {
  Customer? _selecetedCustomer;

  Customer? get selecetedCustomer => _selecetedCustomer;
  set selecetedCustomer(Customer? selecetedCustomer) {
    setState(() => _selecetedCustomer = selecetedCustomer);
  }

  @override
  void initState() {
    super.initState();
    initCustomerValue();
  }

  Future<void> initCustomerValue() async {
    selecetedCustomer =
        await Customer.getCustomerFromApi(widget.selectedCustomerNo);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SearchableTableProvider<Customer>(
        url: '/customer',
        fromJson: Customer.fromJson,
        queryParameters: {
          "BranchSubno": UserProvider.user!.branchSubNo,
        },
      ),
      builder: (BuildContext context, _) {
        SearchableTableProvider<Customer> customerProvider =
            context.watch<SearchableTableProvider<Customer>>();

        final bool hasSelectedValue = widget.selectedCustomerNo != null;
        final bool selecetedCustomerLoaded = _selecetedCustomer != null;

        return SearchableDropdownCallApi<Customer>(
          //TODO: handle first not synchronized customers you depends on the value that get first time the widget rendered
          //TODO: handle on select unnecessary request because when you select a customer you will get the customer from the api depending on textfield change
          isLoading: hasSelectedValue && !selecetedCustomerLoaded,
          tableProvider: customerProvider,
          selectedTextFieldString: (Customer? selectedCustomer) {
            if (selectedCustomer != null) return selectedCustomer.name!;
            return "";
          },
          label: t(context).customer,
          onSelect: (Customer? customer) {
            _selecetedCustomer = customer;
            widget.onSelect(customer);
          },
          onClear: widget.onClear,
          dropdownWidget: (Customer customer, bool isLastItem) {
            return ListTile(
              title: Text(
                customer.name!,
                style: const TextStyle(
                  color: ColorPalette.darkColor,
                  fontSize: 18.0,
                ),
              ),
              subtitle: customer.number != 0
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${t(context).balance}: ${customer.debts!.toStringAsFixed(2)}",
                        ),
                        Text(
                          "${t(context).creditLimit}: ${customer.creditLimit!.toStringAsFixed(2)}",
                        ),
                        if (!isLastItem)
                          Divider(
                            height: 5.0,
                            color: ColorPalette.darkColor.withOpacity(0.3),
                          ),
                      ],
                    )
                  : null,
            );
          },
          items: customerProvider.elements,
          value: selecetedCustomer,
          additionalItems: [
            if (widget.enableCashCustomer)
              Customer(name: "عميل نقدي", number: 0)
          ],
        );
      },
    );
  }
}

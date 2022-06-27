import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/components/custom_button.dart';
import 'package:mashael_al_qasr_5/components/customers_dropdown.dart';
import 'package:mashael_al_qasr_5/components/filter_date_picker_button.dart';
import 'package:mashael_al_qasr_5/models/customer/customer.dart';
import 'package:mashael_al_qasr_5/models/filters.dart';
import 'package:mashael_al_qasr_5/providers/table_with_filter_provider.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/custom_datetime.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/show_snackbar.dart';
import 'package:mashael_al_qasr_5/components/screen_layout.dart';
import 'package:provider/provider.dart';

class FiltersScreen<T> extends StatefulWidget {
  const FiltersScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FiltersScreen<T>> createState() => _FiltersScreenState<T>();
}

class _FiltersScreenState<T> extends State<FiltersScreen<T>> {
  late final TableWithFilterProvider<T> tableProvider;
  Filters _filters = Filters();
  set filters(Filters newFilters) => setState(() => _filters = newFilters);

  @override
  void initState() {
    super.initState();
    tableProvider = context.read<TableWithFilterProvider<T>>();
    filters = tableProvider.filters;
  }

  void _setCustomer(Customer? customer) {
    if (customer != null) {
      filters = _filters.copyWith(customerNo: customer.number);
    }
  }

  void _resetCustomer() {
    filters = _filters.copyWith(customerNo: null);
  }

  void _setFromDate(DateTime? date) {
    filters = _filters.copyWith(fromDate: CustomDateTime.getDateString(date));
  }

  void _resetFromDate() {
    filters = _filters.copyWith(fromDate: null);
  }

  void _setToDate(DateTime? date) {
    filters = _filters.copyWith(toDate: CustomDateTime.getDateString(date));
  }

  void _resetToDate() {
    filters = _filters.copyWith(toDate: null);
  }

  void _onPressFilterResults() {
    if (!_filters.hasFilters) {
      return showSnackBar(context, t(context).selectFilter);
    } else if (_filters.hasDateFilter &&
        _filters.hasDateRangeFilter &&
        _filters.hasWrongDateFilter) {
      return showSnackBar(
        context,
        t(context).errorEndPeriodGreaterThanBeginningPeriod,
      );
    }
    tableProvider.filters = _filters;
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      title: t(context).filterResults,
      showBackButton: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: screenPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10.0),
              // SearchableDropdown<Customer>(
              //   selectedTextFieldString: (Customer? selectedCustomer) {
              //     print(selectedCustomer);
              //     if (selectedCustomer != null) return selectedCustomer.name!;
              //     return "";
              //   },
              //   label: "العميل",
              //   onSelect: (Customer? customer) {
              //     print("Selected Value: $customer");
              //   },
              //   onClear: () {
              //     print("on clear out");
              //   },
              //   where: (Customer customer, String searchValue) {
              //     return customer.name!.toLowerCase().contains(
              //           searchValue.toLowerCase(),
              //         );
              //   },
              //   dropdownWidget: (Customer customer) {
              //     return ListTile(
              //       title: Text(
              //         customer.name!,
              //         style: const TextStyle(
              //           color: ColorPalette.darkColor,
              //           fontSize: 18.0,
              //         ),
              //       ),
              //       subtitle: customer.number != 0
              //           ? Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   "${t(context).balance}: ${customer.debts!.toStringAsFixed(2)}",
              //                 ),
              //                 Text(
              //                   "${t(context).customersDropDown_creditLimit}: ${customer.creditLimit!.toStringAsFixed(2)}",
              //                 ),
              //                 Divider(
              //                   height: 5.0,
              //                   color: ColorPalette.darkColor.withOpacity(0.3),
              //                 )
              //               ],
              //             )
              //           : null,
              //     );
              //   },
              //   items: List<Customer>.generate(10, (index) {
              //     return Customer(
              //       creditLimit: index * 10,
              //       debts: index * 20,
              //       name: "Customer $index",
              //       number: index * 22,
              //       vatNo: index * 7,
              //     );
              //   }),
              //   value: Customer(
              //     number: 22,
              //     name: "Customer 1",
              //     vatNo: 7,
              //     debts: 20.0,
              //     creditLimit: 10.0,
              //   ),
              // ),

              CustomersDropdown(
                selectedCustomerNo: _filters.customerNo,
                onClear: _resetCustomer,
                onSelect: _setCustomer,
              ),

              const SizedBox(height: 10.0),
              FilterDatePickerButton(
                selectedDate: _filters.fromDate,
                firstDate: DateTime(2000),
                lastDate: DateTime.now(),
                label: t(context).from,
                onPickDate: _setFromDate,
                onPressedClearFilter: _resetFromDate,
              ),
              const SizedBox(height: 10.0),
              FilterDatePickerButton(
                selectedDate: _filters.toDate,
                firstDate: DateTime(2000),
                lastDate: DateTime.now(),
                label: t(context).to,
                onPickDate: _setToDate,
                onPressedClearFilter: _resetToDate,
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      buttonColors: Colors.white,
                      textColors: primaryColor,
                      label: t(context).cancel,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: CustomButton(
                      buttonColors: primaryColor,
                      textColors: Colors.white,
                      label: t(context).filterResults,
                      onPressed: _onPressFilterResults,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

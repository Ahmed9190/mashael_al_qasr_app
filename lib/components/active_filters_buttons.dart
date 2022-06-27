import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/filters_header.dart';
import 'package:mashael_al_qasr_5/models/header_filter/header_filter.dart';
import 'package:mashael_al_qasr_5/providers/table_with_filter_provider.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:provider/provider.dart';

class ActiveFiltersButtons<T> extends StatelessWidget {
  const ActiveFiltersButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TableWithFilterProvider tableProvider =
        context.watch<TableWithFilterProvider<T>>();

    return ChangeNotifierProvider.value(
      value: tableProvider,
      child: FiltersHeader<T>(
        headerFilters: [
          HeaderFilter(
            clearFn: () async {
              tableProvider.resetCustomerFilters();
            },
            title: t(context).customerName,
            isActive: tableProvider.filters.hasCustomerFilter,
          ),
          HeaderFilter(
            clearFn: () async {
              tableProvider.resetDateFilters();
            },
            title: t(context).date,
            isActive: tableProvider.filters.hasDateFilter,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/models/filters.dart';
import 'package:mashael_al_qasr_5/models/header_filter/header_filter.dart';
import 'package:mashael_al_qasr_5/providers/table_with_filter_provider.dart';
import 'package:mashael_al_qasr_5/screens/filters_screen.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/components/clear_filter.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:provider/provider.dart';

class FiltersHeader<T> extends StatefulWidget {
  final List<HeaderFilter> headerFilters;

  const FiltersHeader({
    Key? key,
    required this.headerFilters,
  }) : super(key: key);

  @override
  State<FiltersHeader<T>> createState() => _FiltersHeaderState<T>();
}

class _FiltersHeaderState<T> extends State<FiltersHeader<T>> {
  @override
  Widget build(BuildContext context) {
    final bool hasActiveFilters = widget.headerFilters
        .where((HeaderFilter headerFilter) => headerFilter.isActive == true)
        .isNotEmpty;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          hasActiveFilters
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    t(context).filters,
                    style: const TextStyle(
                      color: ColorPalette.darkColor,
                      fontSize: 20.0,
                    ),
                  ),
                )
              : const SizedBox(),
          Expanded(
            child: Row(children: [
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: widget.headerFilters
                    .map(
                      (HeaderFilter headerFilter) => headerFilter.isActive
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.5),
                              child: ClearFilter(
                                onPressed: headerFilter.clearFn,
                                title: headerFilter.title,
                              ),
                            )
                          : const SizedBox(),
                    )
                    .toList(),
              )),
              IconButton(
                iconSize: 33.0,
                padding: const EdgeInsets.fromLTRB(screenPadding, 0, 10.0, 0),
                icon: const Icon(
                  Icons.filter_alt_outlined,
                  color: primaryColor,
                ),
                onPressed: () async {
                  final tableProvider =
                      context.read<TableWithFilterProvider<T>>();
                  Filters? filters = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChangeNotifierProvider.value(
                        value: context.read<TableWithFilterProvider<T>>(),
                        child: FiltersScreen<T>(),
                      ),
                    ),
                  );

                  if (filters != null) {
                    tableProvider.filters = filters;
                    // widget.setNewFilter(filters);
                  }
                },
                // onPressed: () => showFilterModal(context),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

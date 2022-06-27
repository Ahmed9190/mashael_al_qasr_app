import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/components/infinite_scroll.dart';
import 'package:mashael_al_qasr_5/models/position_and_dimensions/position_and_dimensions.dart';
import 'package:mashael_al_qasr_5/providers/table_provider.dart';

class SearchableDropdownCallApiOverlay<T> extends StatefulWidget {
  final PositionAndDimensions inputPositionAndDimensions;
  final double maxDropDownHeight;
  final List<T> items;
  final void Function(T item) onSelectedDropdownItem;
  final Widget Function(T item, bool isLastItem) dropdownWidget;
  final List<T>? additionalElements;
  final TableProvider<T> tableProvider;
  final Widget? noResultsFoundWidget;

  const SearchableDropdownCallApiOverlay({
    Key? key,
    required this.inputPositionAndDimensions,
    this.maxDropDownHeight = 400.0,
    required this.items,
    required this.onSelectedDropdownItem,
    required this.dropdownWidget,
    this.additionalElements,
    required this.tableProvider,
    this.noResultsFoundWidget,
  }) : super(key: key);

  @override
  State<SearchableDropdownCallApiOverlay<T>> createState() =>
      _SearchableDropdownCallApiOverlayState<T>();
}

class _SearchableDropdownCallApiOverlayState<T>
    extends State<SearchableDropdownCallApiOverlay<T>> {
  void setStateWithEveryProviderChange() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    widget.tableProvider.addListener(setStateWithEveryProviderChange);
  }

  @override
  void dispose() {
    widget.tableProvider.removeListener(setStateWithEveryProviderChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.inputPositionAndDimensions.x,
      width: widget.inputPositionAndDimensions.width,
      //TODO: test in rtl and ltr
      top: widget.inputPositionAndDimensions.y +
          widget.inputPositionAndDimensions.height,
      child: Material(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: widget.maxDropDownHeight,
          ),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(5.0),
              ),
            ),
            child: Builder(
              builder: (BuildContext context) {
                return InfiniteScroll<T>(
                  tableProvider: widget.tableProvider,
                  maxHeight: widget.maxDropDownHeight,
                  additionalElements: widget.additionalElements,
                  noResultsFoundWidget: widget.noResultsFoundWidget,
                  buildScrollListTile: (T element, int index) {
                    final bool isLastItem =
                        widget.tableProvider.elements.length - 1 == index;

                    return GestureDetector(
                      onTap: () => widget.onSelectedDropdownItem(element),
                      child: widget.dropdownWidget(element, isLastItem),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

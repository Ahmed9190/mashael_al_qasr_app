import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:provider/provider.dart';

import 'package:mashael_al_qasr_5/components/clear_filter_icon_button.dart';
import 'package:mashael_al_qasr_5/components/dropdown/searchable_dropdown/searchable_dropdown_call_api_overlay.dart';
import 'package:mashael_al_qasr_5/components/inputs/input.dart';
import 'package:mashael_al_qasr_5/components/no_results_found.dart';
import 'package:mashael_al_qasr_5/models/customer/customer.dart';
import 'package:mashael_al_qasr_5/models/position_and_dimensions/position_and_dimensions.dart';
import 'package:mashael_al_qasr_5/providers/searchable_table_provider.dart';
import 'package:mashael_al_qasr_5/providers/table_provider.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';

class SearchableDropdownCallApi<T> extends StatefulWidget {
  final T? value;
  final List<T>? additionalItems;
  final List<T> items;
  final String label;
  final double maxDropDownHeight;
  final Widget Function(T item, bool isLastItem) dropdownWidget;
  final String Function(T?) selectedTextFieldString;
  final Color color;
  final TableProvider<T> tableProvider;
  final bool isLoading;
  final void Function(T?) onSelect;
  final void Function()? onClear;
  final void Function(String searchValue)? onSearchFieldChanged;
  final void Function()? onFocus;

  const SearchableDropdownCallApi({
    Key? key,
    this.value,
    this.additionalItems,
    required this.items,
    required this.label,
    this.maxDropDownHeight = 400.0,
    required this.dropdownWidget,
    required this.selectedTextFieldString,
    this.color = primaryColor,
    required this.tableProvider,
    this.isLoading = false,
    required this.onSelect,
    this.onClear,
    this.onSearchFieldChanged,
    this.onFocus,
  }) : super(key: key);

  @override
  State<SearchableDropdownCallApi<T>> createState() =>
      _SearchableDropdownCallApiState<T>();
}

class _SearchableDropdownCallApiState<T>
    extends State<SearchableDropdownCallApi<T>> {
  final FocusNode _inputFocusNode = FocusNode();
  final GlobalKey _inputKey = GlobalKey();
  late final TextEditingController _searchableDropdownInputController;
  PositionAndDimensions? _inputPositionAndDimensions;
  late T? _value;

  T? get value => _value;
  set value(T? newValue) {
    if (newValue == value) return;
    _value = newValue;
    if (_value == null) {
      _searchableDropdownInputController.clear();
    } else {
      setTextFieldFromValueProp();
    }
  }

  @override
  void initState() {
    super.initState();
    _searchableDropdownInputController = TextEditingController();
    _value = widget.value;

    setTextFieldFromValueProp();

    _inputFocusNode.addListener(_inputFocusNodeListener);
    _searchableDropdownInputController.addListener(onSearchFieldChanged);
  }

  void onSearchFieldChanged() {
    final String searchValue = _searchableDropdownInputController.text;
    final SearchableTableProvider<Customer> customerProvider =
        context.read<SearchableTableProvider<Customer>>();

    customerProvider.searchValue = searchValue;

    if (widget.onSearchFieldChanged != null) {
      widget.onSearchFieldChanged!(searchValue);
    }
  }

  void _inputFocusNodeListener() {
    if (_inputFocusNode.hasFocus) {
      if (widget.onFocus != null) {
        widget.onFocus!();
      }
      _searchableDropdownInputController.clear();

      SchedulerBinding.instance.addPostFrameCallback((_) {
        showDropDown();
        updateInputPositionAndDimensions();
      });
    } else {
      setTextFieldFromValueProp();
    }
    setState(() {});
  }

  Future<void> showDropDown() async {
    Overlay.of(context)?.insert(_floatingDropdown);
  }

  void updateInputPositionAndDimensions() {
    RenderBox renderBox =
        _inputKey.currentContext?.findRenderObject() as RenderBox;

    _inputPositionAndDimensions =
        PositionAndDimensions.fromRenderBox(renderBox);
  }

  void setTextFieldFromValueProp() {
    _searchableDropdownInputController.text =
        widget.selectedTextFieldString(_value);
  }

  @override
  void dispose() {
    _searchableDropdownInputController.dispose();
    _inputFocusNode.dispose();
    super.dispose();
  }

  late final OverlayEntry _floatingDropdown =
      OverlayEntry(builder: (BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: _dismissOverlay,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        SearchableDropdownCallApiOverlay<T>(
          tableProvider: widget.tableProvider,
          inputPositionAndDimensions: _inputPositionAndDimensions!,
          items: widget.items,
          additionalElements: widget.additionalItems,
          onSelectedDropdownItem: _onSelectedDropdownItem,
          dropdownWidget: widget.dropdownWidget,
          noResultsFoundWidget: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: NoResultsFound(
              fontSize: 20.0,
              imageSize: 120.0,
              notFoundText: t(context).noCustomerHasThisName,
            ),
          ),
          maxDropDownHeight: widget.maxDropDownHeight,
        ),
      ],
    );
  });

  void _dismissOverlay() {
    _inputFocusNode.unfocus();
    _floatingDropdown.remove();
  }

  void _onSelectedDropdownItem(T item) {
    _floatingDropdown.remove();
    _inputFocusNode.unfocus();
    _value = item;
    widget.onSelect(item);
  }

  void clearValue() {
    value = null;
    widget.onSelect(null);
    widget.onClear!();
    setState(() {});
  }

  @override
  void didUpdateWidget(covariant SearchableDropdownCallApi<T> oldWidget) {
    if (oldWidget.value != widget.value) {
      value = widget.value;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: constant_identifier_names
    const double INPUT_PADDING_VERTICAL = 15;
    // ignore: constant_identifier_names
    const double INPUT_PADDING_HORIZONTAL = 15;
    final bool hasValue = _value != null;
    final bool hasOnClearFunction = widget.onClear != null;

    return Stack(
      children: [
        if (widget.isLoading)
          const Padding(
            padding: EdgeInsets.only(top: INPUT_PADDING_VERTICAL),
            child: Center(
              child: SizedBox(
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(strokeWidth: 3.0),
              ),
            ),
          ),
        Input(
          key: _inputKey,
          enabled: !widget.isLoading,
          focusNode: _inputFocusNode,
          controller: _searchableDropdownInputController,
          label: widget.label,
          textColor: ColorPalette.darkColor,
          suffixIcon: widget.onClear == null || _value == null
              ? Icon(
                  Icons.arrow_drop_down,
                  color: widget.color,
                )
              : hasValue && hasOnClearFunction
                  ? ClearFilterIconButton(
                      onPressed: clearValue,
                      padding: const EdgeInsets.symmetric(
                        vertical: INPUT_PADDING_VERTICAL,
                        horizontal: INPUT_PADDING_HORIZONTAL,
                      ),
                    )
                  : null,
        ),
      ],
    );
  }
}

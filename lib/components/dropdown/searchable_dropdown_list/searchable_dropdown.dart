// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';

// import 'package:mashael_al_qasr_5/components/clear_filter_icon_button.dart';
// import 'package:mashael_al_qasr_5/components/dropdown/searchable_dropdown_list.dart';
// import 'package:mashael_al_qasr_5/components/inputs/input.dart';
// import 'package:mashael_al_qasr_5/models/position_and_dimensions/position_and_dimensions.dart';
// import 'package:mashael_al_qasr_5/providers/table_provider.dart';
// import 'package:mashael_al_qasr_5/utils/color_palettes.dart';
// import 'package:mashael_al_qasr_5/utils/constants.dart';

// class SearchableDropdown<T> extends StatefulWidget {
//   final T? value;
//   final List<T>? additionalItems;
//   final List<T> items;
//   final String label;
//   final double maxDropDownHeight;
//   final Widget Function(T item, bool isLastItem) dropdownWidget;
//   final bool Function(T item, String searchValue) where;
//   final void Function(T?) onSelect;
//   final void Function()? onClear;
//   final String Function(T?) selectedTextFieldString;
//   final Color color;
//   final String noResultsFoundText;
//   final TableProvider<T> tableProvider;
//   final bool isLoading;
//   final bool listInitialized;

//   const SearchableDropdown({
//     Key? key,
//     this.value,
//     this.additionalItems,
//     required this.items,
//     required this.label,
//     this.maxDropDownHeight = 400.0,
//     required this.dropdownWidget,
//     required this.where,
//     required this.onSelect,
//     this.onClear,
//     required this.selectedTextFieldString,
//     this.color = primaryColor,
//     this.noResultsFoundText = "No results found",
//     required this.tableProvider,
//     this.isLoading = false,
//     this.listInitialized = false,
//   }) : super(key: key);

//   @override
//   State<SearchableDropdown<T>> createState() => _SearchableDropdownState<T>();
// }

// class _SearchableDropdownState<T> extends State<SearchableDropdown<T>> {
//   final FocusNode _inputFocusNode = FocusNode();
//   final GlobalKey _inputKey = GlobalKey();
//   late final TextEditingController _searchableDropdownInputController;
//   PositionAndDimensions? _inputPositionAndDimensions;
//   late T? _value;

//   T? get value => _value;
//   set value(T? newValue) {
//     if (newValue == value) return;
//     _value = newValue;
//     if (_value == null) {
//       _searchableDropdownInputController.clear();
//     } else {
//       setTextFieldFromValueProp();
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _searchableDropdownInputController = TextEditingController();
//     _value = widget.value;

//     setTextFieldFromValueProp();

//     _inputFocusNode.addListener(_inputFocusNodeListener);
//   }

//   void _inputFocusNodeListener() {
//     if (_inputFocusNode.hasFocus) {
//       _searchableDropdownInputController.clear();

//       SchedulerBinding.instance!.addPostFrameCallback((_) {
//         showDropDown();
//         updateInputPositionAndDimensions();
//       });
//     } else {
//       setTextFieldFromValueProp();
//     }
//     setState(() {});
//   }

//   Future<void> showDropDown() async {
//     Overlay.of(context)?.insert(_floatingDropdown);
//   }

//   void updateInputPositionAndDimensions() {
//     RenderBox renderBox =
//         _inputKey.currentContext?.findRenderObject() as RenderBox;

//     _inputPositionAndDimensions =
//         PositionAndDimensions.fromRenderBox(renderBox);
//   }

//   void setTextFieldFromValueProp() {
//     _searchableDropdownInputController.text =
//         widget.selectedTextFieldString(_value);
//   }

//   @override
//   void dispose() {
//     _searchableDropdownInputController.dispose();
//     _inputFocusNode.dispose();
//     super.dispose();
//   }

//   late final OverlayEntry _floatingDropdown =
//       OverlayEntry(builder: (BuildContext context) {
//     return Stack(
//       children: [
//         Positioned.fill(
//           child: GestureDetector(
//             onTap: _dismissOverlay,
//             child: Container(
//               color: Colors.transparent,
//             ),
//           ),
//         ),
//         SearchableDropdownList<T>(
//           tableProvider: widget.tableProvider,
//           inputPositionAndDimensions: _inputPositionAndDimensions!,
//           items: widget.items,
//           additionalItems: widget.additionalItems,
//           onSelectedDropdownItem: _onSelectedDropdownItem,
//           dropdownWidget: widget.dropdownWidget,
//           where: (T item) {
//             return widget.where(item, _searchableDropdownInputController.text);
//           },
//           noResultsFoundText: widget.noResultsFoundText,
//           maxDropDownHeight: widget.maxDropDownHeight,
//           listInitialized: widget.listInitialized,
//         ),
//       ],
//     );
//   });

//   void _dismissOverlay() {
//     _inputFocusNode.unfocus();
//     _floatingDropdown.remove();
//   }

//   void _onSelectedDropdownItem(T item) {
//     _floatingDropdown.remove();
//     _inputFocusNode.unfocus();
//     _value = item;
//     widget.onSelect(item);
//   }

//   void clearValue() {
//     value = null;
//     widget.onSelect(null);
//     widget.onClear!();
//     setState(() {});
//   }

//   @override
//   void didUpdateWidget(covariant SearchableDropdown<T> oldWidget) {
//     if (oldWidget.value != widget.value) {
//       value = widget.value;
//     }

//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // ignore: constant_identifier_names
//     const double INPUT_PADDING_VERTICAL = 15;
//     // ignore: constant_identifier_names
//     const double INPUT_PADDING_HORIZONTAL = 15;
//     final bool hasValue = _value != null;
//     final bool hasOnClearFunction = widget.onClear != null;

//     return Stack(
//       children: [
//         if (widget.isLoading)
//           const Padding(
//             padding: EdgeInsets.only(top: INPUT_PADDING_VERTICAL),
//             child: Center(
//               // top: INPUT_PADDING_VERTICAL,
//               // right: INPUT_PADDING_HORIZONTAL,
//               child: SizedBox(
//                 width: 20.0,
//                 height: 20.0,
//                 child: CircularProgressIndicator(strokeWidth: 3.0),
//               ),
//             ),
//           ),
//         Input(
//           key: _inputKey,
//           enabled: !widget.isLoading,
//           focusNode: _inputFocusNode,
//           controller: _searchableDropdownInputController,
//           label: widget.label,
//           textColor: ColorPalette.darkColor,
//           suffixIcon: widget.onClear == null || _value == null
//               ? Icon(
//                   Icons.arrow_drop_down,
//                   color: widget.color,
//                 )
//               : null,
//         ),
//         if (hasValue && hasOnClearFunction)
//           Positioned(
//             left: 0,
//             child: ClearFilterIconButton(
//               onPressed: clearValue,
//               padding: const EdgeInsets.symmetric(
//                 //TODO: center on multiline text in vertical
//                 vertical: INPUT_PADDING_VERTICAL,
//                 horizontal: INPUT_PADDING_HORIZONTAL,
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }

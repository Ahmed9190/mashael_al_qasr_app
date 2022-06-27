// import 'package:flutter/material.dart';

// import 'package:mashael_al_qasr_5/components/infinite_scroll.dart';
// import 'package:mashael_al_qasr_5/models/position_and_dimensions/position_and_dimensions.dart';
// import 'package:mashael_al_qasr_5/providers/table_provider.dart';
// import 'package:mashael_al_qasr_5/utils/color_palettes.dart';

// class SearchableDropdownList<T> extends StatefulWidget {
//   final PositionAndDimensions inputPositionAndDimensions;
//   final double maxDropDownHeight;
//   final List<T> items;
//   final void Function(T item) onSelectedDropdownItem;
//   final Widget Function(T item, bool isLastItem) dropdownWidget;
//   final bool Function(T item) where;
//   final String noResultsFoundText;
//   final List<T>? additionalItems;
//   final TableProvider<T> tableProvider;
//   final bool listInitialized;

//   const SearchableDropdownList({
//     Key? key,
//     required this.inputPositionAndDimensions,
//     this.maxDropDownHeight = 400.0,
//     required this.items,
//     required this.onSelectedDropdownItem,
//     required this.dropdownWidget,
//     required this.where,
//     required this.noResultsFoundText,
//     this.additionalItems,
//     required this.tableProvider,
//     required this.listInitialized,
//   }) : super(key: key);

//   @override
//   State<SearchableDropdownList<T>> createState() =>
//       _SearchableDropdownListState<T>();
// }

// class _SearchableDropdownListState<T> extends State<SearchableDropdownList<T>> {
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       left: widget.inputPositionAndDimensions.x,
//       width: widget.inputPositionAndDimensions.width,
//       //TODO: test in rtl and ltr
//       top: widget.inputPositionAndDimensions.y +
//           widget.inputPositionAndDimensions.height,
//       child: Material(
//         child: ConstrainedBox(
//           constraints: BoxConstraints(
//             maxHeight: widget.maxDropDownHeight,
//           ),
//           child: Container(
//             decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 0,
//                   blurRadius: 5,
//                   offset: const Offset(0, 3),
//                 ),
//               ],
//               color: Colors.white,
//               borderRadius: const BorderRadius.vertical(
//                 bottom: Radius.circular(5.0),
//               ),
//             ),
//             child: Builder(
//               builder: (BuildContext context) {
//                 // List<T> listWithAddtionalItemsIfExists = [
//                 //   if (widget.additionalItems != null)
//                 //     ...widget.additionalItems!,
//                 //   ...widget.items,
//                 // ];

//                 // List<T> filteredItems =
//                 //     listWithAddtionalItemsIfExists.where(widget.where).toList();
//                 // final int itemsCount = filteredItems.length;

//                 // if (!widget.listInitialized) {
//                 //   return const SizedBox(
//                 //     height: 60.0,
//                 //     child: Center(
//                 //       child: CircularProgressIndicator(),
//                 //     ),
//                 //   );
//                 // }

//                 // if (itemsCount == 0) {
//                 //   return Padding(
//                 //     padding: const EdgeInsets.symmetric(vertical: 12.0),
//                 //     child: Text(
//                 //       widget.noResultsFoundText,
//                 //       style: const TextStyle(
//                 //         fontSize: 17.0,
//                 //         color: ColorPalette.darkColor,
//                 //       ),
//                 //       textAlign: TextAlign.center,
//                 //     ),
//                 //   );
//                 // }
//                 widget.tableProvider.addListener(() {
//                   setState(() {});
//                 });

//                 return InfiniteScroll<T>(
//                   tableProvider: widget.tableProvider,
//                   maxHeight: widget.maxDropDownHeight,
//                   buildScrollListTile: (T element, int index) {
//                     final bool isLastItem =
//                         widget.tableProvider.elements.length - 1 == index;

//                     return GestureDetector(
//                       onTap: () => widget.onSelectedDropdownItem(element),
//                       child: widget.dropdownWidget(element, isLastItem),
//                     );
//                   },
//                   // elements: widget.items,
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

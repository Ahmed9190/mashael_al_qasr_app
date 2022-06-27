import 'package:mashael_al_qasr_5/models/create_invoice_item/create_invoice_item.dart';
import 'package:mashael_al_qasr_5/models/item/item.dart';
import 'package:mashael_al_qasr_5/providers/create_invoice_provider.dart';
import 'package:mashael_al_qasr_5/providers/searchable_table_provider.dart';

class ItemsProvider extends SearchableTableProvider<Item> {
  ItemsProvider({
    required String url,
    required Map<String, dynamic> additionalQueryParameters,
    required Item Function(Map<String, dynamic>) fromJson,
  }) : super(
          url: url,
          queryParameters: additionalQueryParameters,
          fromJson: fromJson,
        );

  List<Item> get itemsNotAdded {
    return removeAddedItemsFromItemsList(result.data);
  }

  List<Item> removeAddedItemsFromItemsList(List<Item> items) {
    List<CreateInvoiceItem> addedItems = [...CreateInvoiceProvider.addedItems];
    List<Item> filteredItems = [...items];

    for (CreateInvoiceItem invoiceItem in addedItems) {
      removeInvoiceItemFromItemsList(invoiceItem, filteredItems);
    }
    return filteredItems;
  }

  void removeInvoiceItemFromItemsList(
    CreateInvoiceItem invoiceItem,
    List<Item> items,
  ) {
    items.removeWhere((Item item) => item.number == invoiceItem.number);
  }
}

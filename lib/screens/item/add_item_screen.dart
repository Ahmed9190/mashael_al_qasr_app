import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/custom_app_bar_widget.dart';
import 'package:mashael_al_qasr_5/components/infinite_scroll.dart';
import 'package:mashael_al_qasr_5/components/screen_layout.dart';
import 'package:mashael_al_qasr_5/models/create_invoice_item/create_invoice_item.dart';
import 'package:mashael_al_qasr_5/models/item/item.dart';
import 'package:mashael_al_qasr_5/providers/create_invoice_provider.dart';
import 'package:mashael_al_qasr_5/providers/items_provider.dart';
import 'package:mashael_al_qasr_5/providers/searchable_table_provider.dart';
import 'package:mashael_al_qasr_5/screens/item/add_item_expansion_panel.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:provider/provider.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({Key? key}) : super(key: key);

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchController.addListener(() {
      SearchableTableProvider<Item> provider = context.read<ItemsProvider>();
      provider.searchValue = _searchController.text;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ItemsProvider itemsProvider = context.watch<ItemsProvider>();
    return ScreenLayout(
      title: t(context).addItem,
      showBackButton: true,
      searchController: _searchController,
      trailing: CustomAppBarTrailingModel(icon: Icons.search),
      child: InfiniteScroll<Item>(
        tableProvider: itemsProvider,
        elements: itemsProvider.itemsNotAdded,
        buildScrollListTile: (Item item, int index) {
          return AddItemExpansionPanel(
            index: index,
            item: item,
            addItem: _addItem,
          );
        },
      ),
    );
  }

  void _addItem(CreateInvoiceItem createInvoiceItem) {
    CreateInvoiceItem itemToAdd = createInvoiceItem;
    context.read<CreateInvoiceProvider>().addItem(itemToAdd);
  }
}

import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/models/invoice_title/invoice_title.dart';
import 'package:mashael_al_qasr_5/models/item/item.dart';
import 'package:mashael_al_qasr_5/providers/create_invoice_provider.dart';
import 'package:mashael_al_qasr_5/providers/items_provider.dart';
import 'package:mashael_al_qasr_5/providers/table_with_filter_provider.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:mashael_al_qasr_5/screens/infinite_scroll_screen/infinite_scroll_screen.dart';
import 'package:mashael_al_qasr_5/screens/invoice/create_invoice_screen.dart';
import 'package:mashael_al_qasr_5/screens/invoice/invoice_tile.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:provider/provider.dart';

class InvoicesScreen extends StatelessWidget {
  const InvoicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfiniteScrollScreen<InvoiceTitle>(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TableWithFilterProvider<InvoiceTitle>(
            url: '/invoice',
            fromJson: InvoiceTitle.fromJson,
            queryParameters: {
              "Createduserno": UserProvider.user!.userNo,
            },
          ),
        ),
      ],
      title: t(context).invoices,
      addButtonScreen: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CreateInvoiceProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ItemsProvider(
              url: '/items',
              fromJson: Item.fromJson,
              additionalQueryParameters: {
                "branchSubNo": UserProvider.user!.branchSubNo,
                "storeNo": UserProvider.user!.storeNo,
              },
            ),
          ),
        ],
        child: const CreateInvoiceScreen(),
      ),
      listTile: (invoiceTile) => InvoiceTile(invoiceTile),
    );
  }
}

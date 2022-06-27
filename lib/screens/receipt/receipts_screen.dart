import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/models/receipt/receipt.dart';
import 'package:mashael_al_qasr_5/providers/create_receipt_provider.dart';
import 'package:mashael_al_qasr_5/providers/table_with_filter_provider.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:mashael_al_qasr_5/screens/infinite_scroll_screen/infinite_scroll_screen.dart';
import 'package:mashael_al_qasr_5/screens/receipt/create_receipt_screen.dart';
import 'package:mashael_al_qasr_5/screens/receipt/receipt_tile.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:provider/provider.dart';

class ReceiptsScreen extends StatelessWidget {
  const ReceiptsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfiniteScrollScreen<Receipt>(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TableWithFilterProvider<Receipt>(
            url: '/receipt',
            fromJson: Receipt.fromJson,
            queryParameters: {
              "Createduserno": UserProvider.user!.userNo,
            },
          ),
        ),
      ],
      addButtonScreen: const CreateReceiptProviderContainer(
        child: CreateReceiptScreen(),
      ),
      listTile: (elementTitle) => ReceiptTile(elementTitle),
      title: t(context).receipts,
    );

    // MultiProvider(
    //   providers:
    //   child: Builder(builder: (context) {
    //     return ScreenLayout(
    //       title: t(context).receipts,
    //       trailing: CustomAppBarTrailingModel(
    //         icon: Icons.add,
    //         onPressed: () => Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //             builder: (_) {
    //               return ;
    //             },
    //           ),
    //         ).then((value) =>
    //             context.read<TableWithFilterProvider<Receipt>>().refresh()),
    //       ),
    //       child: Column(
    //         children: [
    //           const ActiveFiltersButtons<Receipt>(),
    //           Expanded(
    //             child: InfiniteScroll<Receipt>(
    //               tableProvider:
    //                   context.watch<TableWithFilterProvider<Receipt>>(),
    //               buildScrollListTile: (Receipt invoiceTitle, _) {
    //                 return ReceiptTile(invoiceTitle);
    //               },
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   }),
    // );
  }
}

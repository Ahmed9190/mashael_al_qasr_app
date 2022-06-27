import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:mashael_al_qasr_5/components/active_filters_buttons.dart';
import 'package:mashael_al_qasr_5/components/custom_app_bar_widget.dart';
import 'package:mashael_al_qasr_5/components/infinite_scroll.dart';
import 'package:mashael_al_qasr_5/components/screen_layout.dart';
import 'package:mashael_al_qasr_5/providers/table_with_filter_provider.dart';

class InfiniteScrollScreen<T> extends StatelessWidget {
  final List<SingleChildWidget> providers;
  final String title;

  final Widget addButtonScreen;
  final Widget Function(T elementTitle) listTile;

  const InfiniteScrollScreen({
    Key? key,
    required this.providers,
    required this.title,
    required this.addButtonScreen,
    required this.listTile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      builder: (BuildContext context, _) {
        return ScreenLayout(
          title: title,
          trailing: CustomAppBarTrailingModel(
            icon: Icons.add,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return addButtonScreen;
                },
              ),
            ).then((value) =>
                context.read<TableWithFilterProvider<T>>().refresh()),
          ),
          child: Column(
            children: [
              ActiveFiltersButtons<T>(),
              Expanded(
                child: InfiniteScroll<T>(
                  tableProvider: context.watch<TableWithFilterProvider<T>>(),
                  buildScrollListTile: (T elementTitle, _) {
                    return listTile(elementTitle);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

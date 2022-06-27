import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/custom_app_bar_widget.dart';
import 'package:mashael_al_qasr_5/components/custom_drawer.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:provider/src/provider.dart';

class ScreenLayout extends StatefulWidget {
  final String title;
  final CustomAppBarTrailingModel? trailing;
  final Widget child;
  final bool? showBackButton;

  final TextEditingController? searchController;

  final void Function()? onPressBack;

  const ScreenLayout({
    Key? key,
    required this.title,
    this.trailing,
    required this.child,
    this.showBackButton,
    this.searchController,
    this.onPressBack,
  }) : super(key: key);

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  @override
  Widget build(BuildContext context) {
    context.watch<UserProvider>();

    return WillPopScope(
      onWillPop: () async {
        FocusScope.of(context).unfocus();
        return false;
      },
      child: Scaffold(
        drawer: CustomDrawer(
          name: UserProvider.user?.userName ?? "",
        ),
        body: Column(
          children: [
            CustomAppBar(
              showBackButton: widget.showBackButton,
              title: widget.title,
              trailing: widget.trailing,
              onPressBack: widget.onPressBack,
              searchController: widget.searchController,
            ),
            Expanded(
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }
}

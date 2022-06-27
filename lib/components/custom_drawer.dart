import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/providers/local_config_provider.dart';
import 'package:mashael_al_qasr_5/screens/invoice/invoices_screen.dart';
import 'package:mashael_al_qasr_5/screens/sign_in/sign_in_screen.dart';
import 'package:mashael_al_qasr_5/screens/receipt/receipts_screen.dart';

import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/user_shared_preferences.dart';
import 'package:provider/provider.dart';

class DrawerOptionModel {
  late final String title;
  late final Widget screen;
  late final IconData icon;
  DrawerOptionModel({
    required this.title,
    required this.screen,
    required this.icon,
  });
}

class CustomDrawer extends StatefulWidget {
  final String name;

  const CustomDrawer({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  _buildDrawerOption(Icon icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<DrawerOptionModel> drawerOptions = <DrawerOptionModel>[
      DrawerOptionModel(
        screen: const InvoicesScreen(),
        icon: Icons.receipt_outlined,
        title: t(context).invoices,
      ),
      DrawerOptionModel(
        screen: const ReceiptsScreen(),
        icon: Icons.receipt_long_rounded,
        title: t(context).receipts,
      ),
    ];

    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      LocalConfigProvider.localConfig!.currentLanguage ==
                              LanguagesOptions.ar
                          ? const Radius.circular(60.0)
                          : Radius.zero,
                  bottomRight:
                      LocalConfigProvider.localConfig!.currentLanguage ==
                              LanguagesOptions.en
                          ? const Radius.circular(60.0)
                          : Radius.zero,
                ),
              ),
              alignment: Alignment.center,
              width: double.infinity - 10.0,
              height: 150.0,
              child: Text(
                widget.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            ...List.generate(drawerOptions.length, (int i) {
              DrawerOptionModel drawerOptionProperties = drawerOptions[i];
              return _buildDrawerOption(
                Icon(
                  drawerOptionProperties.icon,
                  size: 27,
                  color: primaryColor,
                ),
                drawerOptionProperties.title,
                () {
                  //TODO: prevent navigation to the same page
                  _dismissDrawer(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => drawerOptionProperties.screen,
                    ),
                  );
                },
              ); //_buildDrawerOption
            }).toList(),
            GestureDetector(
              onTap: _toggleEnglish,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      t(context).english,
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        height: 25,
                      ),
                    ),
                    Switch(
                      activeColor: primaryColor,
                      value: LocalConfigProvider.localConfig!.currentLanguage ==
                          LanguagesOptions.en,
                      onChanged: (_) => _toggleEnglish(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: _buildDrawerOption(
                  const Icon(
                    Icons.logout_outlined,
                    size: 27,
                    color: primaryColor,
                  ),
                  t(context).signOut,
                  () => _onPressSignOut(context), //Navigator
                ), //_buildDrawerOption,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _dismissDrawer(BuildContext context) => Navigator.of(context).pop();

  void _onPressSignOut(BuildContext context) async {
    UserSharedPreferenced.removeSavedSignInUser();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const SignInScreen(),
      ),
    );
  }

  void _toggleEnglish() {
    final LanguagesOptions currentLanguage =
        LocalConfigProvider.localConfig!.currentLanguage;
    final bool isArabic = currentLanguage == LanguagesOptions.ar;

    final LanguagesOptions newLanguage =
        isArabic ? LanguagesOptions.en : LanguagesOptions.ar;

    context.read<LocalConfigProvider>().setLanguage(newLanguage);
  }
}

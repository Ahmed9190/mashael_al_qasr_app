import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    required this.onTap,
    required this.trailing,
    this.subtitle,
    this.icon,
    this.thirdLine,
  }) : super(key: key);

  final String title;
  final String trailing;
  final String? subtitle;
  final String? thirdLine;
  final VoidCallback onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Column(
            children: [
              ListTile(
                leading: icon != null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            icon,
                            size: 40,
                            color: primaryColor,
                          ),
                        ],
                      )
                    : null,
                title: Text(
                  title,
                  style: const TextStyle(
                    color: ColorPalette.darkColor,
                    fontSize: 18.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "$subtitle${renderThirdLineIfExists()}",
                  style: const TextStyle(fontSize: 16.0),
                ),
                trailing: Text(
                  trailing,
                  style: const TextStyle(fontSize: 16.0),
                ),
                onTap: onTap,
              ),
            ],
          ),
        ),
        Divider(height: 0, color: ColorPalette.darkColor.withOpacity(.25)),
      ],
    );
  }

  String renderThirdLineIfExists() {
    return thirdLine != null ? "\n$thirdLine" : "";
  }
}

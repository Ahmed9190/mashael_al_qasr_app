import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';

OutlineInputBorder customOutlineInputBorder(
        {Color? color, double? borderWidth}) =>
    OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        width: borderWidth ?? 1.2,
        color: color ?? primaryColor,
      ),
    );

InputDecoration customTextFieldDecoration({
  String? labelText,
  String? hintText,
  Color? hintAndLabelColor,
  required Color borderColor,
}) {
  return InputDecoration(
    hintText: hintText,
    labelText: labelText,
    labelStyle: TextStyle(fontSize: 18.0, color: hintAndLabelColor),
    contentPadding: const EdgeInsets.all(9.0),
    border: customOutlineInputBorder(),
    enabledBorder: customOutlineInputBorder(color: borderColor),
    focusedBorder:
        customOutlineInputBorder(borderWidth: 1.8, color: borderColor),
    alignLabelWithHint: true,
  );
}

InputDecoration customDropDownDecoration({
  String? labelText,
  String? hintText,
  Color? hintAndLabelColor,
  required Color borderColor,
}) {
  return customTextFieldDecoration(
    labelText: labelText,
    hintText: hintText,
    hintAndLabelColor: hintAndLabelColor,
    borderColor: borderColor,
  ).copyWith(
    suffixIcon: dropdownIcon,
  );
}

const dropdownIcon = Icon(
  Icons.arrow_drop_down,
  color: primaryColor,
  size: 25.0,
);

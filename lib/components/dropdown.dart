import 'package:flutter/material.dart';

import 'package:mashael_al_qasr_5/decorations/text_field_decorations.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';

class Dropdown<T> extends StatelessWidget {
  final List<T> elements;
  final T? value;
  final Function(T?) onChangeValue;
  final String Function(T) optionLabel;
  final Color color;
  final String label;

  const Dropdown({
    Key? key,
    required this.elements,
    this.value,
    required this.onChangeValue,
    required this.optionLabel,
    this.color = primaryColor,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0),
      child: DropdownButtonFormField<T>(
        onChanged: onChangeValue,
        value: value,
        decoration: customTextFieldDecoration(
          labelText: label,
          hintAndLabelColor: color.withOpacity(0.7),
          borderColor: color,
        ).copyWith(
          contentPadding: const EdgeInsets.fromLTRB(12.0, 9.0, 9.0, 9.0),
        ),
        icon: dropdownIcon,
        style: const TextStyle(
          color: Colors.black87,
          fontFamily: "Cairo",
          fontSize: 16.0,
          height: 1.65,
        ),
        items: elements.map<DropdownMenuItem<T>>(
          (T option) {
            return DropdownMenuItem<T>(
              value: option,
              child: Text(optionLabel(option)),
            );
          },
        ).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/utils/parser.dart';

void setTextControllerDynamicValue({
  required TextEditingController controller,
  dynamic newText,
}) {
  newText = Parser.stringIfNullReplace(newText, "");

  controller.value = TextEditingValue(
    text: newText,
    selection: TextSelection.fromPosition(
      TextPosition(offset: newText?.length ?? 0),
    ),
  );
}

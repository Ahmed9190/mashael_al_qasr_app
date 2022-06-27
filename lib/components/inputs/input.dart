import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mashael_al_qasr_5/decorations/text_field_decorations.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/regexp.dart';

enum InputType {
  number,
  text,
  currency,
}

class Input extends StatefulWidget {
  final TextEditingController controller;
  final Color color;
  final Color? textColor;
  final List<TextInputFormatter>? inputFormatters;
  final String label;
  final String? Function(String?)? validator;
  final TextDirection? textDirection;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final TextInputType? keyboardType;
  final bool req;
  final bool password;
  final InputType type;
  final int? minLines;
  final void Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final bool enabled;
  final TextAlign textAlign;
  final InputDecoration? decoration;

  const Input({
    Key? key,
    required this.controller,
    this.color = primaryColor,
    this.textColor,
    this.inputFormatters,
    required this.label,
    this.validator,
    this.textDirection,
    this.textInputAction = TextInputAction.next,
    this.autofocus = false,
    this.keyboardType,
    this.req = false,
    this.password = false,
    this.type = InputType.text,
    this.minLines,
    this.onFieldSubmitted,
    this.focusNode,
    this.suffixIcon,
    this.enabled = true,
    this.textAlign = TextAlign.start,
    this.decoration,
  }) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  late final TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
  }

  String? _validator(String? value) {
    if (widget.req && _controller.text.isEmpty) {
      return "${t(context).pleaseEnter} ${widget.label}";
    }
    return widget.validator?.call(value);
  }

  List<TextInputFormatter>? _inputFormatters() {
    if (widget.inputFormatters != null) return widget.inputFormatters;

    if (widget.type == InputType.number) {
      return [FilteringTextInputFormatter.allow(digitsRegExp)];
    }
    if (widget.type == InputType.currency) {
      return [CurrencyTextInputFormatter(symbol: "")];
    }
    return null;
  }

  TextInputType? _keyboardType() {
    if (widget.keyboardType != null) return widget.keyboardType;

    if (widget.type == InputType.number || widget.type == InputType.currency) {
      return TextInputType.number;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: widget.textAlign,
      enabled: widget.enabled,
      focusNode: widget.focusNode,
      onFieldSubmitted: widget.onFieldSubmitted,
      textAlignVertical: TextAlignVertical.top,
      controller: _controller,
      cursorColor: widget.color,
      style: TextStyle(fontSize: 17, color: widget.textColor ?? widget.color),
      inputFormatters: _inputFormatters(),
      autofocus: widget.autofocus,
      keyboardType: _keyboardType(),
      autocorrect: false,
      obscureText: widget.password,
      decoration: widget.decoration ??
          customTextFieldDecoration(
            labelText: widget.label,
            hintAndLabelColor: widget.color.withOpacity(0.7),
            borderColor: widget.color,
          ).copyWith(suffixIcon: widget.suffixIcon),
      textDirection: widget.textDirection,
      textInputAction: widget.textInputAction,
      validator: _validator,
      minLines: widget.minLines,
      maxLines: widget.password ? 1 : widget.minLines,
    );
  }
}

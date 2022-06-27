import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/clear_filter_icon_button.dart';

import 'package:mashael_al_qasr_5/components/custom_button.dart';
import 'package:mashael_al_qasr_5/utils/color_palettes.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/custom_datetime.dart';

// ignore: must_be_immutable
class FilterDatePickerButton extends StatefulWidget {
  String? selectedDate;
  final DateTime firstDate;
  final DateTime lastDate;

  final void Function(DateTime?) onPickDate;

  final String label;

  final void Function() onPressedClearFilter;

  FilterDatePickerButton({
    Key? key,
    this.selectedDate,
    required this.firstDate,
    required this.lastDate,
    required this.onPickDate,
    required this.label,
    required this.onPressedClearFilter,
  }) : super(key: key);

  @override
  State<FilterDatePickerButton> createState() => _FilterDatePickerButtonState();
}

class _FilterDatePickerButtonState extends State<FilterDatePickerButton> {
  void onPickDate(DateTime? date) {
    widget.onPickDate(date);
    setState(() {
      widget.selectedDate = CustomDateTime.getDateString(date);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: widget.selectedDate != null
                    ? DateTime.parse(
                        CustomDateTime.flipFormat(widget.selectedDate!))
                    : DateTime.now(),
                firstDate: widget.firstDate,
                lastDate: widget.lastDate,
              ).then(onPickDate);
            },
            buttonColors: primaryColor,
            label: widget.label,
            icon: Icons.date_range_outlined,
            textColors: Colors.white,
          ),
        ),
        if (widget.selectedDate != null)
          Row(
            children: [
              const SizedBox(width: 10.0),
              Text(
                CustomDateTime.getDateString(
                  CustomDateTime.flipFormat(widget.selectedDate!),
                ),
                style: const TextStyle(
                  color: ColorPalette.darkColor,
                  fontSize: 18.0,
                ),
              ),
              ClearFilterIconButton(onPressed: widget.onPressedClearFilter),
            ],
          ),
      ],
    );
  }
}

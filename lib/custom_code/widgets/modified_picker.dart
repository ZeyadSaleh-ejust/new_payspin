// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/cupertino.dart';

class ModifiedPicker extends StatefulWidget {
  const ModifiedPicker({
    super.key,
    this.width,
    this.height,
    this.itemExtent = 40, // Increased itemExtent for spacing
    this.fontSize = 20,
    this.onValueChanged,
  });

  final double? width;
  final double? height;
  final double itemExtent;
  final double? fontSize;
  final Future Function(String selectedMonth, String selectedYear)?
      onValueChanged;

  @override
  State<ModifiedPicker> createState() => _ModifiedPickerState();
}

class _ModifiedPickerState extends State<ModifiedPicker> {
  final List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sept',
    'Oct',
    'Nov',
    'Dec'
  ];

  int selectedMonthIndex = DateTime.now().month - 1; // Default: Current month
  int selectedYear = DateTime.now().year; // Default: Current year

  /// Calls the callback function with the selected month and year separately
  Future<void> _notifySelection() async {
    if (widget.onValueChanged != null) {
      String selectedMonth = months[selectedMonthIndex];
      String selectedYearStr = selectedYear.toString();
      await widget.onValueChanged!(selectedMonth, selectedYearStr);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Month Picker
        SizedBox(
          width: 60,
          height: 200,
          child: CupertinoPicker(
            scrollController:
                FixedExtentScrollController(initialItem: selectedMonthIndex),
            itemExtent: widget.itemExtent,
            onSelectedItemChanged: (index) {
              setState(() {
                selectedMonthIndex = index;
              });
              _notifySelection();
            },
            children: months
                .map((month) => Center(
                      child: Text(
                        month,
                        style: TextStyle(
                          fontSize: widget.fontSize,
                          color: selectedMonthIndex == months.indexOf(month)
                              ? Color(0XFFd94df8)
                              : Colors.black,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),

        // Year Picker
        SizedBox(
          width: 60,
          height: 200,
          child: CupertinoPicker(
            scrollController: FixedExtentScrollController(initialItem: 0),
            itemExtent: widget.itemExtent,
            onSelectedItemChanged: (index) {
              setState(() {
                selectedYear = DateTime.now().year + index;
              });
              _notifySelection();
            },
            children: List.generate(2, (index) {
              int yearValue = DateTime.now().year + index;
              return Center(
                child: Text(
                  yearValue.toString(),
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: selectedYear == yearValue
                        ? Color(0xFFd94df8)
                        : Colors.black,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

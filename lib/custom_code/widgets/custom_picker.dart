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

import 'package:flutter/cupertino.dart'; // for CupertinoPicker

class CustomPicker extends StatefulWidget {
  const CustomPicker({
    super.key,
    this.width,
    this.height,
    this.itemExtent =
        40, // Increased itemExtent to create more space between numbers
    this.fontSize = 20,
    this.onValueChanged,
    this.items = const [],
  });

  final double? width;
  final double? height;
  final double itemExtent;
  final double? fontSize;
  final List<String> items;
  final Future Function(String selectedValue)? onValueChanged;

  @override
  State<CustomPicker> createState() => _CustomPickerState();
}

class _CustomPickerState extends State<CustomPicker> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 100,
      height: widget.height ?? 200,
      child: CupertinoPicker(
        scrollController:
            FixedExtentScrollController(initialItem: selectedIndex),
        itemExtent:
            widget.itemExtent, // This controls the space between numbers
        onSelectedItemChanged: (int index) {
          setState(() {
            selectedIndex = index;
          });

          String selectedValue = widget.items[index];

          if (widget.onValueChanged != null) {
            widget.onValueChanged!(selectedValue);
          }
        },
        children: List.generate(widget.items.length, (index) {
          return Center(
            child: Text(
              widget.items[index],
              style: TextStyle(
                fontSize: widget.fontSize,
                color:
                    index == selectedIndex ? Color(0xFFD94DF8) : Colors.black,
              ),
            ),
          );
        }),
      ),
    );
  }
}

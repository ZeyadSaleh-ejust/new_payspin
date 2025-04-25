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

import 'package:another_flushbar/flushbar.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({
    super.key,
    this.width,
    this.height,
    this.onJoin,
    this.onDelete,
    this.iconColor,
  });

  final double? width;
  final double? height;
  final Function()? onJoin;
  final Function()? onDelete;
  final Color? iconColor;

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(
        Icons.more_vert,
        color: widget.iconColor ?? Theme.of(context).iconTheme.color,
        size: 24.0,
      ),
      onSelected: (String value) {
        if (value == 'join' && widget.onJoin != null) {
          widget.onJoin!();
        } else if (value == 'delete' && widget.onDelete != null) {
          widget.onDelete!();
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'join',
          child: Text('Join'),
        ),
        const PopupMenuItem<String>(
          value: 'delete',
          child: Text('Delete'),
        ),
      ],
    );
  }
}

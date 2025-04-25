import '/flutter_flow/flutter_flow_util.dart';
import 'invite_friend_widget.dart' show InviteFriendWidget;
import 'package:flutter/material.dart';

class InviteFriendModel extends FlutterFlowModel<InviteFriendWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Friend_ID_field widget.
  FocusNode? friendIDFieldFocusNode;
  TextEditingController? friendIDFieldTextController;
  String? Function(BuildContext, String?)? friendIDFieldTextControllerValidator;
  // State field(s) for Turn_field widget.
  FocusNode? turnFieldFocusNode;
  TextEditingController? turnFieldTextController;
  String? Function(BuildContext, String?)? turnFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    friendIDFieldFocusNode?.dispose();
    friendIDFieldTextController?.dispose();

    turnFieldFocusNode?.dispose();
    turnFieldTextController?.dispose();
  }
}

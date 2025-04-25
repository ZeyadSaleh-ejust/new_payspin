import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'join1_r_e_h_a_m_widget.dart' show Join1REHAMWidget;
import 'package:flutter/material.dart';

class Join1REHAMModel extends FlutterFlowModel<Join1REHAMWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CircleKey widget.
  FocusNode? circleKeyFocusNode;
  TextEditingController? circleKeyTextController;
  String? Function(BuildContext, String?)? circleKeyTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CirclesRecord? userValidation;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    circleKeyFocusNode?.dispose();
    circleKeyTextController?.dispose();
  }
}

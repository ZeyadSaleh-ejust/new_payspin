import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create2_r_e_h_a_m_widget.dart' show Create2REHAMWidget;
import 'package:flutter/material.dart';

class Create2REHAMModel extends FlutterFlowModel<Create2REHAMWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<CircleTypeStruct, bool> checkboxValueMap = {};
  List<CircleTypeStruct> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

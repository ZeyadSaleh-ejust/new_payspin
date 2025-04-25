import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'payspin_r_e_h_a_m_widget.dart' show PayspinREHAMWidget;
import 'package:flutter/material.dart';

class PayspinREHAMModel extends FlutterFlowModel<PayspinREHAMWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}

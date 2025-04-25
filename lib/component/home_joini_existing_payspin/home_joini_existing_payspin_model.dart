import '/flutter_flow/flutter_flow_util.dart';
import 'home_joini_existing_payspin_widget.dart'
    show HomeJoiniExistingPayspinWidget;
import 'package:flutter/material.dart';

class HomeJoiniExistingPayspinModel
    extends FlutterFlowModel<HomeJoiniExistingPayspinWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Circle_id_field widget.
  FocusNode? circleIdFieldFocusNode;
  TextEditingController? circleIdFieldTextController;
  String? Function(BuildContext, String?)? circleIdFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    circleIdFieldFocusNode?.dispose();
    circleIdFieldTextController?.dispose();
  }
}

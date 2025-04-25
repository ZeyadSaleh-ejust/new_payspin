import '/flutter_flow/flutter_flow_util.dart';
import 'home_create_new_widget.dart' show HomeCreateNewWidget;
import 'package:flutter/material.dart';

class HomeCreateNewModel extends FlutterFlowModel<HomeCreateNewWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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

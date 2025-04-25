import '/flutter_flow/flutter_flow_util.dart';
import 'app_values_component2_simplified_widget.dart'
    show AppValuesComponent2SimplifiedWidget;
import 'package:flutter/material.dart';

class AppValuesComponent2SimplifiedModel
    extends FlutterFlowModel<AppValuesComponent2SimplifiedWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

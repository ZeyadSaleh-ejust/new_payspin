import '/component/app_navi_component/app_navi_component_widget.dart';
import '/component/app_values_component2_simplified/app_values_component2_simplified_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding02_widget.dart' show Onboarding02Widget;
import 'package:flutter/material.dart';

class Onboarding02Model extends FlutterFlowModel<Onboarding02Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppNaviComponent component.
  late AppNaviComponentModel appNaviComponentModel;
  // Model for AppValuesComponent2Simplified component.
  late AppValuesComponent2SimplifiedModel appValuesComponent2SimplifiedModel;

  @override
  void initState(BuildContext context) {
    appNaviComponentModel = createModel(context, () => AppNaviComponentModel());
    appValuesComponent2SimplifiedModel =
        createModel(context, () => AppValuesComponent2SimplifiedModel());
  }

  @override
  void dispose() {
    appNaviComponentModel.dispose();
    appValuesComponent2SimplifiedModel.dispose();
  }
}

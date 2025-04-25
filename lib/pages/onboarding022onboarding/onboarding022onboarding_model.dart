import '/component/app_navi_componentonboarding/app_navi_componentonboarding_widget.dart';
import '/component/app_values_component2_simplified/app_values_component2_simplified_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding022onboarding_widget.dart' show Onboarding022onboardingWidget;
import 'package:flutter/material.dart';

class Onboarding022onboardingModel
    extends FlutterFlowModel<Onboarding022onboardingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppNaviComponentonboarding component.
  late AppNaviComponentonboardingModel appNaviComponentonboardingModel;
  // Model for AppValuesComponent2Simplified component.
  late AppValuesComponent2SimplifiedModel appValuesComponent2SimplifiedModel;

  @override
  void initState(BuildContext context) {
    appNaviComponentonboardingModel =
        createModel(context, () => AppNaviComponentonboardingModel());
    appValuesComponent2SimplifiedModel =
        createModel(context, () => AppValuesComponent2SimplifiedModel());
  }

  @override
  void dispose() {
    appNaviComponentonboardingModel.dispose();
    appValuesComponent2SimplifiedModel.dispose();
  }
}

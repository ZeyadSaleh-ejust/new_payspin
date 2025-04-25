import '/component/step3_phone_login_component/step3_phone_login_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'step3_widget.dart' show Step3Widget;
import 'package:flutter/material.dart';

class Step3Model extends FlutterFlowModel<Step3Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Step3-PhoneLoginComponent component.
  late Step3PhoneLoginComponentModel step3PhoneLoginComponentModel;

  @override
  void initState(BuildContext context) {
    step3PhoneLoginComponentModel =
        createModel(context, () => Step3PhoneLoginComponentModel());
  }

  @override
  void dispose() {
    step3PhoneLoginComponentModel.dispose();
  }
}

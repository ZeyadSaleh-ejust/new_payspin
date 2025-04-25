import '/component/step4_o_t_p_phone_login_component/step4_o_t_p_phone_login_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'step4_widget.dart' show Step4Widget;
import 'package:flutter/material.dart';

class Step4Model extends FlutterFlowModel<Step4Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Step4-OTPPhoneLoginComponent component.
  late Step4OTPPhoneLoginComponentModel step4OTPPhoneLoginComponentModel;

  @override
  void initState(BuildContext context) {
    step4OTPPhoneLoginComponentModel =
        createModel(context, () => Step4OTPPhoneLoginComponentModel());
  }

  @override
  void dispose() {
    step4OTPPhoneLoginComponentModel.dispose();
  }
}

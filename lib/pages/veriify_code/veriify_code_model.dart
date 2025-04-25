import '/component/step4_o_t_p_phone_login_component/step4_o_t_p_phone_login_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'veriify_code_widget.dart' show VeriifyCodeWidget;
import 'package:flutter/material.dart';

class VeriifyCodeModel extends FlutterFlowModel<VeriifyCodeWidget> {
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

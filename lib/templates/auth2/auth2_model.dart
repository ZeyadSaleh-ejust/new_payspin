import '/component/step1_create_account_screen/step1_create_account_screen_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_widget.dart' show Auth2Widget;
import 'package:flutter/material.dart';

class Auth2Model extends FlutterFlowModel<Auth2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Step1-CreateAccountScreen component.
  late Step1CreateAccountScreenModel step1CreateAccountScreenModel;

  @override
  void initState(BuildContext context) {
    step1CreateAccountScreenModel =
        createModel(context, () => Step1CreateAccountScreenModel());
  }

  @override
  void dispose() {
    step1CreateAccountScreenModel.dispose();
  }
}

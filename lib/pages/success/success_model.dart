import '/component/step5_success/step5_success_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'success_widget.dart' show SuccessWidget;
import 'package:flutter/material.dart';

class SuccessModel extends FlutterFlowModel<SuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Step5-Success component.
  late Step5SuccessModel step5SuccessModel;

  @override
  void initState(BuildContext context) {
    step5SuccessModel = createModel(context, () => Step5SuccessModel());
  }

  @override
  void dispose() {
    step5SuccessModel.dispose();
  }
}

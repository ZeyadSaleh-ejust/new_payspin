import '/component/home_joini_existing_payspin_check/home_joini_existing_payspin_check_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_joini_existing_payspin_check_widget.dart'
    show HomeJoiniExistingPayspinCheckWidget;
import 'package:flutter/material.dart';

class HomeJoiniExistingPayspinCheckModel
    extends FlutterFlowModel<HomeJoiniExistingPayspinCheckWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  String? _pinCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2qf7dl6t' /* Field is required */,
      );
    }
    if (val.length < 6) {
      return 'Requires 6 characters.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    pinCodeControllerValidator = _pinCodeControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}

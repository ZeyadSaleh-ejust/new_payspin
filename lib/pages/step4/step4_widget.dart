import '/component/step4_o_t_p_phone_login_component/step4_o_t_p_phone_login_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'step4_model.dart';
export 'step4_model.dart';

class Step4Widget extends StatefulWidget {
  const Step4Widget({super.key});

  static String routeName = 'step4';
  static String routePath = '/step4';

  @override
  State<Step4Widget> createState() => _Step4WidgetState();
}

class _Step4WidgetState extends State<Step4Widget> {
  late Step4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Step4Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'step4'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.step4OTPPhoneLoginComponentModel,
            updateCallback: () => safeSetState(() {}),
            child: Step4OTPPhoneLoginComponentWidget(),
          ),
        ),
      ),
    );
  }
}

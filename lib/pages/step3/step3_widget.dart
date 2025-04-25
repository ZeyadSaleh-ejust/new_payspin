import '/component/step3_phone_login_component/step3_phone_login_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'step3_model.dart';
export 'step3_model.dart';

class Step3Widget extends StatefulWidget {
  const Step3Widget({super.key});

  static String routeName = 'step3';
  static String routePath = '/step3';

  @override
  State<Step3Widget> createState() => _Step3WidgetState();
}

class _Step3WidgetState extends State<Step3Widget> {
  late Step3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Step3Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'step3'});
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
            model: _model.step3PhoneLoginComponentModel,
            updateCallback: () => safeSetState(() {}),
            child: Step3PhoneLoginComponentWidget(),
          ),
        ),
      ),
    );
  }
}

import '/component/step3_phone_login_component/step3_phone_login_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'phone_number_screen_model.dart';
export 'phone_number_screen_model.dart';

class PhoneNumberScreenWidget extends StatefulWidget {
  const PhoneNumberScreenWidget({super.key});

  static String routeName = 'phoneNumberScreen';
  static String routePath = '/phoneNumberScreen';

  @override
  State<PhoneNumberScreenWidget> createState() =>
      _PhoneNumberScreenWidgetState();
}

class _PhoneNumberScreenWidgetState extends State<PhoneNumberScreenWidget> {
  late PhoneNumberScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhoneNumberScreenModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'phoneNumberScreen'});
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

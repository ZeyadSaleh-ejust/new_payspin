import '/auth/firebase_auth/auth_util.dart';
import '/component/step4_o_t_p_phone_login_component/step4_o_t_p_phone_login_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'veriify_code_model.dart';
export 'veriify_code_model.dart';

class VeriifyCodeWidget extends StatefulWidget {
  const VeriifyCodeWidget({super.key});

  static String routeName = 'VeriifyCode';
  static String routePath = '/veriifyCode';

  @override
  State<VeriifyCodeWidget> createState() => _VeriifyCodeWidgetState();
}

class _VeriifyCodeWidgetState extends State<VeriifyCodeWidget> {
  late VeriifyCodeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VeriifyCodeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'VeriifyCode'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('VERIIFY_CODE_VeriifyCode_ON_INIT_STATE');
      logFirebaseEvent('VeriifyCode_auth');
      GoRouter.of(context).prepareAuthEvent();
      final smsCodeVal =
          _model.step4OTPPhoneLoginComponentModel.pinCodeController!.text;
      if (smsCodeVal.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Enter SMS verification code.'),
          ),
        );
        return;
      }
      final phoneVerifiedUser = await authManager.verifySmsCode(
        context: context,
        smsCode: smsCodeVal,
      );
      if (phoneVerifiedUser == null) {
        return;
      }

      context.goNamedAuth(HomeWidget.routeName, context.mounted);
    });

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

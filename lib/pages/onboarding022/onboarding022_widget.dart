import '/component/app_navi_component/app_navi_component_widget.dart';
import '/component/app_values_component2_simplified/app_values_component2_simplified_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'onboarding022_model.dart';
export 'onboarding022_model.dart';

class Onboarding022Widget extends StatefulWidget {
  const Onboarding022Widget({super.key});

  static String routeName = 'Onboarding022';
  static String routePath = '/onboarding022';

  @override
  State<Onboarding022Widget> createState() => _Onboarding022WidgetState();
}

class _Onboarding022WidgetState extends State<Onboarding022Widget>
    with TickerProviderStateMixin {
  late Onboarding022Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding022Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Onboarding022'});
    animationsMap.addAll({
      'appValuesComponent2SimplifiedOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.6, 0.6),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.appNaviComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: AppNaviComponentWidget(),
              ),
              Expanded(
                child: wrapWithModel(
                  model: _model.appValuesComponent2SimplifiedModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AppValuesComponent2SimplifiedWidget(),
                ).animateOnPageLoad(animationsMap[
                    'appValuesComponent2SimplifiedOnPageLoadAnimation']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

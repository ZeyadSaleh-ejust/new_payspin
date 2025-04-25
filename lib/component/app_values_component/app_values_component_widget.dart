import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'app_values_component_model.dart';
export 'app_values_component_model.dart';

class AppValuesComponentWidget extends StatefulWidget {
  const AppValuesComponentWidget({super.key});

  @override
  State<AppValuesComponentWidget> createState() =>
      _AppValuesComponentWidgetState();
}

class _AppValuesComponentWidgetState extends State<AppValuesComponentWidget>
    with TickerProviderStateMixin {
  late AppValuesComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppValuesComponentModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 4000.0.ms,
            duration: 3000.0.ms,
            hz: 1,
            offset: Offset(0.0, 1.0),
            rotation: 0.087,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 4000.0.ms,
            hz: 1,
            offset: Offset(1.0, 3.0),
            rotation: 0.087,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 4000.0.ms,
            hz: 2,
            offset: Offset(0.0, 0.0),
            rotation: 0.035,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 5000.0.ms,
            hz: 2,
            offset: Offset(1.0, 1.0),
            rotation: 0.052,
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 4000.0.ms,
            duration: 3000.0.ms,
            hz: 1,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
        ],
      ),
      'imageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 100.0.ms,
            duration: 1100.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1210.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 100.0.ms,
            duration: 1200.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1210.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 100.0.ms,
            duration: 1300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 4000.0.ms,
            hz: 2,
            offset: Offset(0.0, 0.0),
            rotation: 0.035,
          ),
        ],
      ),
      'containerOnPageLoadAnimation6': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 5000.0.ms,
            hz: 2,
            offset: Offset(1.0, 1.0),
            rotation: 0.052,
          ),
        ],
      ),
      'containerOnPageLoadAnimation7': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 4000.0.ms,
            hz: 2,
            offset: Offset(0.0, 0.0),
            rotation: 0.035,
          ),
        ],
      ),
      'containerOnPageLoadAnimation8': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 4000.0.ms,
            duration: 3000.0.ms,
            hz: 1,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
        ],
      ),
      'containerOnPageLoadAnimation9': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 4000.0.ms,
            duration: 3000.0.ms,
            hz: 1,
            offset: Offset(0.0, 1.0),
            rotation: 0.087,
          ),
        ],
      ),
      'containerOnPageLoadAnimation10': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 4000.0.ms,
            hz: 6,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
        ],
      ),
      'containerOnPageLoadAnimation11': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 5000.0.ms,
            hz: 2,
            offset: Offset(1.0, 1.0),
            rotation: 0.052,
          ),
        ],
      ),
      'containerOnPageLoadAnimation12': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 4000.0.ms,
            hz: 2,
            offset: Offset(0.0, 0.0),
            rotation: 0.035,
          ),
        ],
      ),
      'containerOnPageLoadAnimation13': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 4000.0.ms,
            duration: 3000.0.ms,
            hz: 1,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
        ],
      ),
      'containerOnPageLoadAnimation14': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 4000.0.ms,
            duration: 3000.0.ms,
            hz: 1,
            offset: Offset(0.0, 1.0),
            rotation: 0.087,
          ),
        ],
      ),
      'containerOnPageLoadAnimation15': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 4000.0.ms,
            hz: 1,
            offset: Offset(1.0, 3.0),
            rotation: 0.087,
          ),
        ],
      ),
      'containerOnPageLoadAnimation16': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 4000.0.ms,
            duration: 3000.0.ms,
            hz: 1,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
        ],
      ),
      'imageOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1210.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1210.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900.0,
      height: 700.0,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
            child: PageView(
              controller: _model.pageViewController ??=
                  PageController(initialPage: 0),
              onPageChanged: (_) => safeSetState(() {}),
              scrollDirection: Axis.horizontal,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    child: Stack(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Opacity(
                                opacity: 0.5,
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 40.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 25.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(65.0),
                                          bottomRight: Radius.circular(65.0),
                                          topLeft: Radius.circular(65.0),
                                          topRight: Radius.circular(65.0),
                                        ),
                                      ),
                                      child: Container(
                                        height: 35.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFC00FF),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(65.0),
                                            bottomRight: Radius.circular(65.0),
                                            topLeft: Radius.circular(65.0),
                                            topRight: Radius.circular(65.0),
                                          ),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Color(0xFFFC00FF),
                                            width: 0.0,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: GradientText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'yb7uhi21' /* New car */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineMedium
                                                  .override(
                                                    font: GoogleFonts.raleway(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                              colors: [
                                                Colors.white,
                                                Color(0xFFE2E2E2)
                                              ],
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              gradientType: GradientType.linear,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation1']!),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.5,
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 15.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 25.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(65.0),
                                          bottomRight: Radius.circular(65.0),
                                          topLeft: Radius.circular(65.0),
                                          topRight: Radius.circular(65.0),
                                        ),
                                      ),
                                      child: Container(
                                        height: 35.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF07D8DD),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(65.0),
                                            bottomRight: Radius.circular(65.0),
                                            topLeft: Radius.circular(65.0),
                                            topRight: Radius.circular(65.0),
                                          ),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Color(0xFF07D8DD),
                                            width: 0.0,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 0.0),
                                            child: GradientText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '3n8w8emm' /* Marriage */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineMedium
                                                  .override(
                                                    font: GoogleFonts.raleway(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                              colors: [
                                                Colors.white,
                                                Color(0xFFE2E2E2)
                                              ],
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              gradientType: GradientType.linear,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation2']!),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.5,
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 25.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 20.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(65.0),
                                          bottomRight: Radius.circular(65.0),
                                          topLeft: Radius.circular(65.0),
                                          topRight: Radius.circular(65.0),
                                        ),
                                      ),
                                      child: Container(
                                        width: 100.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF8E0FF2),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(65.0),
                                            bottomRight: Radius.circular(65.0),
                                            topLeft: Radius.circular(65.0),
                                            topRight: Radius.circular(65.0),
                                          ),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Color(0xFF8E0FF2),
                                            width: 0.0,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 0.0),
                                            child: GradientText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'f6sqsl7y' /* New phone */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineMedium
                                                  .override(
                                                    font: GoogleFonts.raleway(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                              colors: [
                                                Colors.white,
                                                Color(0xFFE2E2E2)
                                              ],
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              gradientType: GradientType.linear,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation3']!),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.04, 0.32),
                          child: Lottie.asset(
                            'assets/jsons/Animation_-_1705329534109.json',
                            width: 498.0,
                            height: 525.0,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 47.0,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 2.0),
                                    child: GradientText(
                                      FFLocalizations.of(context).getText(
                                        'delbmdbv' /* What is your goal? */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            font: GoogleFonts.raleway(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .fontStyle,
                                            ),
                                            fontSize: 36.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .fontStyle,
                                          ),
                                      colors: [
                                        Color(0xFFFC00FF),
                                        Color(0xFF07D8DD)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'hfjfzagi' /* You will find a money circle f... */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.raleway(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Opacity(
                                      opacity: 0.5,
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(1.0, -1.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 25.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(65.0),
                                              bottomRight:
                                                  Radius.circular(65.0),
                                              topLeft: Radius.circular(65.0),
                                              topRight: Radius.circular(65.0),
                                            ),
                                          ),
                                          child: Container(
                                            width: 100.0,
                                            height: 42.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF5C7AEA),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(65.0),
                                                bottomRight:
                                                    Radius.circular(65.0),
                                                topLeft: Radius.circular(65.0),
                                                topRight: Radius.circular(65.0),
                                              ),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Color(0xFF5C7AEA),
                                                width: 0.0,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: GradientText(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9ouo7rr6' /* Study */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        font:
                                                            GoogleFonts.raleway(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontStyle,
                                                      ),
                                                  colors: [
                                                    Colors.white,
                                                    Color(0xFFE2E2E2)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation4']!),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 25.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(65.0),
                                              bottomRight:
                                                  Radius.circular(65.0),
                                              topLeft: Radius.circular(65.0),
                                              topRight: Radius.circular(65.0),
                                            ),
                                          ),
                                          child: Container(
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFC408),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(65.0),
                                                bottomRight:
                                                    Radius.circular(65.0),
                                                topLeft: Radius.circular(65.0),
                                                topRight: Radius.circular(65.0),
                                              ),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Color(0xFFFFC408),
                                                width: 0.0,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: GradientText(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8le58r3k' /* Saving */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        font:
                                                            GoogleFonts.raleway(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontStyle,
                                                      ),
                                                  colors: [
                                                    Colors.white,
                                                    Color(0xFFE2E2E2)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation5']!),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 190.0, 180.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Asset_12@2x.png',
                                width: 150.0,
                                height: 125.0,
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation1']!),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                205.0, 0.0, 0.0, 195.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Asset_7@2x.png',
                                width: 130.0,
                                height: 110.0,
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation2']!),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Asset_14@2x.png',
                                width: 210.0,
                                height: 120.0,
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation3']!),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 240.0, 240.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Asset_13@2x.png',
                                width: 110.0,
                                height: 120.0,
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation4']!),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 240.0, 20.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Asset_10@2x.png',
                                width: 120.0,
                                height: 150.0,
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation5']!),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                230.0, 240.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Asset_15@2x.png',
                                width: 160.0,
                                height: 140.0,
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation6']!),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                35.0, 0.0, 0.0, 145.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Asset_8@2x.png',
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation7']!),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(-0.88, 0.16),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 110.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF5C7AEA),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF5C7AEA),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  'j3cvv7up' /* Committee */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation6']!),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(-0.92, 0.55),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 100.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF8E0FF2),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF8E0FF2),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  '9yf8wgwb' /* Gün */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation7']!),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(-0.57, -0.02),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 120.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFC408),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFFFFC408),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  'f94m6swn' /* Hagbad */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation8']!),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(-0.2, -0.18),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 100.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFC00FF),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFFFC00FF),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  'lfn3rv9v' /* Tontine */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation9']!),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(-0.63, -0.35),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 130.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF07D8DD),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF07D8DD),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  'tapyf1us' /* Gam'eya */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation10']!),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(0.54, -0.36),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 110.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF5C7AEA),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF5C7AEA),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  'b2ydxhs9' /* Lenshare  */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation11']!),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(0.56, -0.11),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 70.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF8E0FF2),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF8E0FF2),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  '2z85y7j6' /* Susu */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation12']!),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(-0.77, 0.34),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 100.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFC408),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFFFFC408),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  'n32xxeq7' /* Tandas */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation13']!),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(0.78, 0.09),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 80.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFC00FF),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFFFC00FF),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  'tp053ju8' /* Gye  */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation14']!),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(0.97, 0.32),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 100.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF07D8DD),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF07D8DD),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  'bgotam6g' /* Kameti */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation15']!),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(0.88, 0.52),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 25.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0),
                              topLeft: Radius.circular(65.0),
                              topRight: Radius.circular(65.0),
                            ),
                          ),
                          child: Container(
                            width: 125.0,
                            height: 35.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFC408),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(65.0),
                                bottomRight: Radius.circular(65.0),
                                topLeft: Radius.circular(65.0),
                                topRight: Radius.circular(65.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFFFFC408),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  '5i3bj5qq' /* Chit fund */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                colors: [Colors.white, Color(0xFFE2E2E2)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation16']!),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Container(
                          width: 754.0,
                          height: 113.0,
                          decoration: BoxDecoration(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: GradientText(
                                  FFLocalizations.of(context).getText(
                                    'own9ke1d' /* How do you name your money cir... */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        font: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .fontStyle,
                                        ),
                                        fontSize: 36.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontStyle,
                                      ),
                                  colors: [
                                    Color(0xFFFC00FF),
                                    Color(0xFF07D8DD)
                                  ],
                                  gradientDirection: GradientDirection.ltr,
                                  gradientType: GradientType.linear,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'z5874415' /* Because we know it is traditio... */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  font: GoogleFonts.raleway(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/SittingGirl1.png',
                          width: 250.0,
                          height: 280.0,
                          fit: BoxFit.contain,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation8']!),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: GradientText(
                          FFLocalizations.of(context).getText(
                            '2sxw0r3z' /* Looking for money circle? */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                font: GoogleFonts.raleway(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontStyle,
                                ),
                                fontSize: 36.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontStyle,
                              ),
                          colors: [Color(0xFFFC00FF), Color(0xFF07D8DD)],
                          gradientDirection: GradientDirection.ltr,
                          gradientType: GradientType.linear,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'm2y8z2az' /* We connect you with an extende... */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              font: GoogleFonts.raleway(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/GlobeGuyStandingCOM.png',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 320.0,
                            fit: BoxFit.fitHeight,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation9']!),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: smooth_page_indicator.SmoothPageIndicator(
                controller: _model.pageViewController ??=
                    PageController(initialPage: 0),
                count: 3,
                axisDirection: Axis.horizontal,
                onDotClicked: (i) async {
                  await _model.pageViewController!.animateToPage(
                    i,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                  safeSetState(() {});
                },
                effect: smooth_page_indicator.ExpandingDotsEffect(
                  expansionFactor: 3.0,
                  spacing: 8.0,
                  radius: 16.0,
                  dotWidth: 16.0,
                  dotHeight: 8.0,
                  dotColor: Color(0xFFC9C9C9),
                  activeDotColor: FlutterFlowTheme.of(context).secondary,
                  paintStyle: PaintingStyle.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

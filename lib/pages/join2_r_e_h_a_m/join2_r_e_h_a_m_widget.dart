import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'join2_r_e_h_a_m_model.dart';
export 'join2_r_e_h_a_m_model.dart';

class Join2REHAMWidget extends StatefulWidget {
  const Join2REHAMWidget({
    super.key,
    required this.circleReference,
    required this.myTurn,
  });

  /// reference for the Verfied cirlce where the user have joined
  final CirclesRecord? circleReference;

  final String? myTurn;

  static String routeName = 'Join2REHAM';
  static String routePath = '/Join2REHAM';

  @override
  State<Join2REHAMWidget> createState() => _Join2REHAMWidgetState();
}

class _Join2REHAMWidgetState extends State<Join2REHAMWidget> {
  late Join2REHAMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Join2REHAMModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Join2REHAM'});
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(64.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('JOIN2_R_E_H_A_M_Icon_c2kg3moc_ON_TAP');
                      logFirebaseEvent('Icon_navigate_back');
                      context.safePop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'mk5hd6jv' /* Join an Existing Circle */,
                    ),
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          font: GoogleFonts.raleway(
                            fontWeight: FlutterFlowTheme.of(context)
                                .displaySmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .displaySmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .displaySmall
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .displaySmall
                              .fontStyle,
                        ),
                  ),
                ),
              ],
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 140.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/successfully.png',
                      width: 160.0,
                      height: 160.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'qy9xzz4w' /* Payspin added successfully! */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontStyle,
                          ),
                          color: Colors.black,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontStyle,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'bo0p8x4c' /* Your circle has been added. Go... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 72.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'JOIN2_R_E_H_A_M_PAGE_PAYSPIN_BTN_ON_TAP');
                      // CreateNewUsers
                      logFirebaseEvent('Button_CreateNewUsers');

                      var circleUsersRecordReference =
                          CircleUsersRecord.createDoc(
                        widget.circleReference!.reference,
                        id: currentUserUid,
                      );
                      await circleUsersRecordReference
                          .set(createCircleUsersRecordData(
                        admin: false,
                        phone: int.parse(currentPhoneNumber),
                        turn: int.parse((widget.myTurn!)),
                        userId: currentUserUid,
                        name: currentUserDisplayName,
                      ));
                      _model.newUser = CircleUsersRecord.getDocumentFromData(
                          createCircleUsersRecordData(
                            admin: false,
                            phone: int.parse(currentPhoneNumber),
                            turn: int.parse((widget.myTurn!)),
                            userId: currentUserUid,
                            name: currentUserDisplayName,
                          ),
                          circleUsersRecordReference);
                      // delete document from Gen
                      logFirebaseEvent('Button_deletedocumentfromGen');
                      await widget.circleReference!.generatedUsers.lastOrNull!
                          .delete();
                      // Remove lastItem from Gen
                      logFirebaseEvent('Button_RemovelastItemfromGen');

                      await widget.circleReference!.reference.update({
                        ...mapToFirestore(
                          {
                            'generatedUsers': FieldValue.arrayRemove([
                              widget
                                  .circleReference?.generatedUsers.lastOrNull
                            ]),
                            'RealUsers': FieldValue.arrayUnion(
                                [_model.newUser?.reference]),
                          },
                        ),
                      });
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(HomeWidget.routeName);

                      safeSetState(() {});
                    },
                    text: FFLocalizations.of(context).getText(
                      '9hx8si6a' /* Payspin */,
                    ),
                    options: FFButtonOptions(
                      width: 364.0,
                      height: 56.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).customColor1,
                      textStyle:
                          FlutterFlowTheme.of(context).labelLarge.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

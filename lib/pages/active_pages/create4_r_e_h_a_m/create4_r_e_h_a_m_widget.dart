import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create4_r_e_h_a_m_model.dart';
export 'create4_r_e_h_a_m_model.dart';

class Create4REHAMWidget extends StatefulWidget {
  const Create4REHAMWidget({super.key});

  static String routeName = 'Create4REHAM';
  static String routePath = '/Create4REHAM';

  @override
  State<Create4REHAMWidget> createState() => _Create4REHAMWidgetState();
}

class _Create4REHAMWidgetState extends State<Create4REHAMWidget> {
  late Create4REHAMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Create4REHAMModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Create4REHAM'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                      logFirebaseEvent(
                          'CREATE4_R_E_H_A_M_Icon_qa9qixol_ON_TAP');
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
                      'ourw2ynw' /* Create Your Own Circle */,
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
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
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
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'zzadtw9w' /* Successful! */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.black,
                                  fontSize: 32.0,
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
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'vwa6jo0g' /* Your circle has been created. ... */,
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
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('CREATE4_R_E_H_A_M_CONTINUE_BTN_ON_TAP');
                      // Generate circle ID
                      logFirebaseEvent('Button_GeneratecircleID');
                      _model.circleUid = await actions.circleUid();
                      // Create Circle Document
                      logFirebaseEvent('Button_CreateCircleDocument');

                      var circlesRecordReference =
                          CirclesRecord.collection.doc(_model.circleUid!);
                      await circlesRecordReference.set({
                        ...createCirclesRecordData(
                          finished: false,
                          months: int.parse(FFAppState().month),
                          name: 'test Circle1',
                          circleId: _model.circleUid,
                          circleStatus: 'Creating',
                          paymentPerMonth: int.parse(FFAppState().amount),
                          startdate: FFAppState().startOn,
                          endDate: functions.endDate(FFAppState().startOn,
                              int.parse(FFAppState().month)),
                        ),
                        ...mapToFirestore(
                          {
                            'roles': getRolesListFirestoreData(
                              functions.generatePinNumbers(FFAppState().month),
                            ),
                          },
                        ),
                      });
                      _model.createcircle = CirclesRecord.getDocumentFromData({
                        ...createCirclesRecordData(
                          finished: false,
                          months: int.parse(FFAppState().month),
                          name: 'test Circle1',
                          circleId: _model.circleUid,
                          circleStatus: 'Creating',
                          paymentPerMonth: int.parse(FFAppState().amount),
                          startdate: FFAppState().startOn,
                          endDate: functions.endDate(FFAppState().startOn,
                              int.parse(FFAppState().month)),
                        ),
                        ...mapToFirestore(
                          {
                            'roles': getRolesListFirestoreData(
                              functions.generatePinNumbers(FFAppState().month),
                            ),
                          },
                        ),
                      }, circlesRecordReference);
                      // create_Circle_Users
                      logFirebaseEvent('Button_create_Circle_Users');

                      var circleUsersRecordReference1 =
                          CircleUsersRecord.createDoc(
                        _model.createcircle!.reference,
                        id: currentUserReference!.id,
                      );
                      await circleUsersRecordReference1
                          .set(createCircleUsersRecordData(
                        admin: true,
                        phone: int.parse(currentPhoneNumber),
                        turn: FFAppState().turn,
                        userId: currentUserUid,
                        name:
                            '${valueOrDefault(currentUserDocument?.firstName, '')} ${valueOrDefault(currentUserDocument?.lastName, '')}',
                      ));
                      _model.adminCircleUserRef =
                          CircleUsersRecord.getDocumentFromData(
                              createCircleUsersRecordData(
                                admin: true,
                                phone: int.parse(currentPhoneNumber),
                                turn: FFAppState().turn,
                                userId: currentUserUid,
                                name:
                                    '${valueOrDefault(currentUserDocument?.firstName, '')} ${valueOrDefault(currentUserDocument?.lastName, '')}',
                              ),
                              circleUsersRecordReference1);
                      // RealUser Ref in CircleUsers
                      logFirebaseEvent('Button_RealUserRefinCircleUsers');

                      await _model.createcircle!.reference.update({
                        ...mapToFirestore(
                          {
                            'RealUsers': FieldValue.arrayUnion(
                                [_model.adminCircleUserRef?.reference]),
                          },
                        ),
                      });
                      logFirebaseEvent('Button_firestore_query');
                      _model.createNewNotification =
                          await queryNewNotificationRecordOnce(
                        queryBuilder: (newNotificationRecord) =>
                            newNotificationRecord.where(
                          'notification_User_ID',
                          isEqualTo: currentUserUid,
                        ),
                        singleRecord: true,
                      ).then((s) => s.firstOrNull);
                      // Update CircleID in User
                      logFirebaseEvent('Button_UpdateCircleIDinUser');

                      await currentUserReference!.update(createUsersRecordData(
                        circleID: _model.createcircle?.reference,
                        notificationRef:
                            _model.createNewNotification?.reference,
                        circleIDnotRef: _model.circleUid,
                      ));
                      logFirebaseEvent('Button_backend_call');

                      await NotificationRecord.createDoc(
                              currentUserDocument!.notificationRef!)
                          .set(createNotificationRecordData(
                        body: 'joining a second circle',
                        title: 'new Circle2',
                        timestamp: getCurrentTimestamp,
                      ));
                      while (_model.loopCounter <
                          (int.parse(FFAppState().month) - 1)) {
                        // remaining CircleUsers
                        logFirebaseEvent('Button_remainingCircleUsers');

                        var circleUsersRecordReference2 =
                            CircleUsersRecord.createDoc(
                                _model.createcircle!.reference);
                        await circleUsersRecordReference2
                            .set(createCircleUsersRecordData(
                          admin: false,
                          phone: 00000000,
                          turn: 0,
                          userId: 'null',
                          name: 'null',
                        ));
                        _model.circleUsersReference =
                            CircleUsersRecord.getDocumentFromData(
                                createCircleUsersRecordData(
                                  admin: false,
                                  phone: 00000000,
                                  turn: 0,
                                  userId: 'null',
                                  name: 'null',
                                ),
                                circleUsersRecordReference2);
                        // Update User Reference
                        logFirebaseEvent('Button_UpdateUserReference');

                        await _model.createcircle!.reference.update({
                          ...mapToFirestore(
                            {
                              'generatedUsers': FieldValue.arrayUnion(
                                  [_model.circleUsersReference?.reference]),
                            },
                          ),
                        });
                        logFirebaseEvent('Button_wait__delay');
                        await Future.delayed(const Duration(milliseconds: 500));
                        logFirebaseEvent('Button_update_page_state');
                        _model.loopCounter = _model.loopCounter + 1;
                        safeSetState(() {});
                      }
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(HomeWidget.routeName);

                      safeSetState(() {});
                    },
                    text: FFLocalizations.of(context).getText(
                      'eq7xxsrf' /* Continue */,
                    ),
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 0.9,
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

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'repeating_containers_o_l_dzizo_model.dart';
export 'repeating_containers_o_l_dzizo_model.dart';

class RepeatingContainersOLDzizoWidget extends StatefulWidget {
  const RepeatingContainersOLDzizoWidget({super.key});

  @override
  State<RepeatingContainersOLDzizoWidget> createState() =>
      _RepeatingContainersOLDzizoWidgetState();
}

class _RepeatingContainersOLDzizoWidgetState
    extends State<RepeatingContainersOLDzizoWidget> {
  late RepeatingContainersOLDzizoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RepeatingContainersOLDzizoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('REPEATING_CONTAINERS_O_L_DZIZO_repeating');
      logFirebaseEvent('repeatingContainersOLDzizo_firestore_que');
      _model.userDocCircle = await queryCircleUsersRecordOnce(
        parent: currentUserDocument?.circleID,
        queryBuilder: (circleUsersRecord) => circleUsersRecord.where(
          'user_id',
          isEqualTo: currentUserUid,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
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
      width: double.infinity,
      height: 78.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: AuthUserStreamWidget(
        builder: (context) => FutureBuilder<List<CircleUsersRecord>>(
          future: queryCircleUsersRecordOnce(
            parent: currentUserDocument?.circleID,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: SpinKitCircle(
                    color: FlutterFlowTheme.of(context).customColor3,
                    size: 50.0,
                  ),
                ),
              );
            }
            List<CircleUsersRecord> rowCircleUsersRecordList = snapshot.data!;

            return Row(
              mainAxisSize: MainAxisSize.max,
              children:
                  List.generate(rowCircleUsersRecordList.length, (rowIndex) {
                final rowCircleUsersRecord = rowCircleUsersRecordList[rowIndex];
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (rowIndex == (_model.userDocCircle!.turn - 1))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: Icon(
                              Icons.person_pin_circle,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 30.0,
                            ),
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                          ),
                          child: Container(
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: rowIndex ==
                                      (_model.userDocCircle!.turn - 1)
                                  ? FlutterFlowTheme.of(context).customColor1
                                  : FlutterFlowTheme.of(context).alternate,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                              ),
                              border: Border.all(
                                color: rowIndex ==
                                        (_model.userDocCircle!.turn - 1)
                                    ? FlutterFlowTheme.of(context).customColor1
                                    : FlutterFlowTheme.of(context).alternate,
                                width: 4.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                        child: StreamBuilder<List<CirclesRecord>>(
                          stream: queryCirclesRecord(
                            queryBuilder: (circlesRecord) =>
                                circlesRecord.where(
                              'circle_id',
                              isEqualTo: currentUserDocument?.circleID?.id,
                            ),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitCircle(
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<CirclesRecord> textCirclesRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final textCirclesRecord =
                                textCirclesRecordList.isNotEmpty
                                    ? textCirclesRecordList.first
                                    : null;

                            return Text(
                              functions.containersDate(
                                  textCirclesRecord!.startdate, rowIndex),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }).divide(SizedBox(width: 9.0)),
            );
          },
        ),
      ),
    );
  }
}

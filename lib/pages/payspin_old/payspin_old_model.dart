import '/backend/backend.dart';
import '/components/repeating_containers_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'payspin_old_widget.dart' show PayspinOldWidget;
import 'package:flutter/material.dart';

class PayspinOldModel extends FlutterFlowModel<PayspinOldWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in PayspinOld widget.
  CirclesRecord? checkingCreated;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for repeatingContainers component.
  late RepeatingContainersModel repeatingContainersModel;

  @override
  void initState(BuildContext context) {
    repeatingContainersModel =
        createModel(context, () => RepeatingContainersModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    repeatingContainersModel.dispose();
  }
}

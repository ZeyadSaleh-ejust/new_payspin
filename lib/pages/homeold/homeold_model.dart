import '/components/list_view_card_widget.dart';
import '/components/repeating_containers_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'homeold_widget.dart' show HomeoldWidget;
import 'package:flutter/material.dart';

class HomeoldModel extends FlutterFlowModel<HomeoldWidget> {
  ///  State fields for stateful widgets in this page.

  String currentPageLink = '';
  // Model for ListViewCard component.
  late ListViewCardModel listViewCardModel;
  // Model for repeatingContainers component.
  late RepeatingContainersModel repeatingContainersModel;

  @override
  void initState(BuildContext context) {
    listViewCardModel = createModel(context, () => ListViewCardModel());
    repeatingContainersModel =
        createModel(context, () => RepeatingContainersModel());
  }

  @override
  void dispose() {
    listViewCardModel.dispose();
    repeatingContainersModel.dispose();
  }
}

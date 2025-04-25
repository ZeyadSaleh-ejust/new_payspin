import '/component/title/title_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'f_a_qs_widget.dart' show FAQsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FAQsModel extends FlutterFlowModel<FAQsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController7;

  // Model for Title component.
  late TitleModel titleModel;

  @override
  void initState(BuildContext context) {
    titleModel = createModel(context, () => TitleModel());
  }

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    expandableExpandableController5.dispose();
    expandableExpandableController6.dispose();
    expandableExpandableController7.dispose();
    titleModel.dispose();
  }
}

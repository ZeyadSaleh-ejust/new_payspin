import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  bool isFilled = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageViewOffers widget.
  PageController? pageViewOffersController1;

  int get pageViewOffersCurrentIndex1 => pageViewOffersController1 != null &&
          pageViewOffersController1!.hasClients &&
          pageViewOffersController1!.page != null
      ? pageViewOffersController1!.page!.round()
      : 0;
  // State field(s) for PageViewOffers widget.
  PageController? pageViewOffersController2;

  int get pageViewOffersCurrentIndex2 => pageViewOffersController2 != null &&
          pageViewOffersController2!.hasClients &&
          pageViewOffersController2!.page != null
      ? pageViewOffersController2!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

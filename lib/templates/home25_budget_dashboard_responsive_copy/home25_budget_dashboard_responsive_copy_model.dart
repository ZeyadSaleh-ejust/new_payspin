import '/component/circle_dashboard_compnent/circle_dashboard_compnent_widget.dart';
import '/component/circle_payment_summary/circle_payment_summary_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home25_budget_dashboard_responsive_copy_widget.dart'
    show Home25BudgetDashboardResponsiveCopyWidget;
import 'package:flutter/material.dart';

class Home25BudgetDashboardResponsiveCopyModel
    extends FlutterFlowModel<Home25BudgetDashboardResponsiveCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CircleDashboardCompnent component.
  late CircleDashboardCompnentModel circleDashboardCompnentModel;
  // Model for CirclePaymentSummary component.
  late CirclePaymentSummaryModel circlePaymentSummaryModel;

  @override
  void initState(BuildContext context) {
    circleDashboardCompnentModel =
        createModel(context, () => CircleDashboardCompnentModel());
    circlePaymentSummaryModel =
        createModel(context, () => CirclePaymentSummaryModel());
  }

  @override
  void dispose() {
    circleDashboardCompnentModel.dispose();
    circlePaymentSummaryModel.dispose();
  }
}

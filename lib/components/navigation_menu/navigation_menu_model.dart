import '/components/navigation_options/navigation_options_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'navigation_menu_widget.dart' show NavigationMenuWidget;
import 'package:flutter/material.dart';

class NavigationMenuModel extends FlutterFlowModel<NavigationMenuWidget> {
  ///  Local state fields for this component.

  bool isOptions = false;

  ///  State fields for stateful widgets in this component.

  // Model for HistorySampel.
  late NavigationOptionsModel historySampelModel;
  // Model for AlokasiSampel.
  late NavigationOptionsModel alokasiSampelModel;
  // Model for MonitoringHonor.
  late NavigationOptionsModel monitoringHonorModel;
  // Model for HistoryMitra.
  late NavigationOptionsModel historyMitraModel;

  @override
  void initState(BuildContext context) {
    historySampelModel = createModel(context, () => NavigationOptionsModel());
    alokasiSampelModel = createModel(context, () => NavigationOptionsModel());
    monitoringHonorModel = createModel(context, () => NavigationOptionsModel());
    historyMitraModel = createModel(context, () => NavigationOptionsModel());
  }

  @override
  void dispose() {
    historySampelModel.dispose();
    alokasiSampelModel.dispose();
    monitoringHonorModel.dispose();
    historyMitraModel.dispose();
  }
}

import '/components/navigation_options/navigation_options_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'navigation_menu_widget.dart' show NavigationMenuWidget;
import 'package:flutter/material.dart';

class NavigationMenuModel extends FlutterFlowModel<NavigationMenuWidget> {
  ///  Local state fields for this component.

  bool isOptions = false;

  ///  State fields for stateful widgets in this component.

  // Model for KetuaTim.
  late NavigationOptionsModel ketuaTimModel;
  // Model for Bendahara.
  late NavigationOptionsModel bendaharaModel;
  // Model for Kepala.
  late NavigationOptionsModel kepalaModel;
  // Model for Anggota.
  late NavigationOptionsModel anggotaModel;

  @override
  void initState(BuildContext context) {
    ketuaTimModel = createModel(context, () => NavigationOptionsModel());
    bendaharaModel = createModel(context, () => NavigationOptionsModel());
    kepalaModel = createModel(context, () => NavigationOptionsModel());
    anggotaModel = createModel(context, () => NavigationOptionsModel());
  }

  @override
  void dispose() {
    ketuaTimModel.dispose();
    bendaharaModel.dispose();
    kepalaModel.dispose();
    anggotaModel.dispose();
  }
}

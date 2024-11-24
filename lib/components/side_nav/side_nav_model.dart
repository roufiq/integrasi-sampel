import '/components/dark_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'side_nav_widget.dart' show SideNavWidget;
import 'package:flutter/material.dart';

class SideNavModel extends FlutterFlowModel<SideNavWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for dark component.
  late DarkModel darkModel;

  @override
  void initState(BuildContext context) {
    darkModel = createModel(context, () => DarkModel());
  }

  @override
  void dispose() {
    darkModel.dispose();
  }
}

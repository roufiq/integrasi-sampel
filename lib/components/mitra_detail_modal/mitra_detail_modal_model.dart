import '/flutter_flow/flutter_flow_util.dart';
import 'mitra_detail_modal_widget.dart' show MitraDetailModalWidget;
import 'package:flutter/material.dart';

class MitraDetailModalModel extends FlutterFlowModel<MitraDetailModalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBarDetail widget.
  TabController? tabBarDetailController;
  int get tabBarDetailCurrentIndex =>
      tabBarDetailController != null ? tabBarDetailController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarDetailController?.dispose();
  }
}

import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mitra_detail_component_widget.dart' show MitraDetailComponentWidget;
import 'package:flutter/material.dart';

class MitraDetailComponentModel
    extends FlutterFlowModel<MitraDetailComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBarDetail widget.
  TabController? tabBarDetailController;
  int get tabBarDetailCurrentIndex =>
      tabBarDetailController != null ? tabBarDetailController!.index : 0;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<History1371ViewRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarDetailController?.dispose();
    paginatedDataTableController.dispose();
  }
}

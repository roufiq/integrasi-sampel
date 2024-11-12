import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'data_table_history_mitra_widget.dart' show DataTableHistoryMitraWidget;
import 'package:flutter/material.dart';

class DataTableHistoryMitraModel
    extends FlutterFlowModel<DataTableHistoryMitraWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<History1371ViewRow>();
  // Stores action output result for [Backend Call - Query Rows] action in RichText widget.
  List<Mitra1371Row>? mitra;
  // Stores action output result for [Backend Call - Query Rows] action in RichText widget.
  List<History1371ViewRow>? history;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}

import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'data_table_history_mitra_widget.dart' show DataTableHistoryMitraWidget;
import 'package:flutter/material.dart';

class DataTableHistoryMitraModel
    extends FlutterFlowModel<DataTableHistoryMitraWidget> {
  ///  Local state fields for this component.

  List<History1371ViewRow> historyMitraList = [];
  void addToHistoryMitraList(History1371ViewRow item) =>
      historyMitraList.add(item);
  void removeFromHistoryMitraList(History1371ViewRow item) =>
      historyMitraList.remove(item);
  void removeAtIndexFromHistoryMitraList(int index) =>
      historyMitraList.removeAt(index);
  void insertAtIndexInHistoryMitraList(int index, History1371ViewRow item) =>
      historyMitraList.insert(index, item);
  void updateHistoryMitraListAtIndex(
          int index, Function(History1371ViewRow) updateFn) =>
      historyMitraList[index] = updateFn(historyMitraList[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<History1371ViewRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}

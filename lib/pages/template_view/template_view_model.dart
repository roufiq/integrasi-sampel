import '/backend/supabase/supabase.dart';
import '/components/data_table_history_mitra_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'template_view_widget.dart' show TemplateViewWidget;
import 'package:flutter/material.dart';

class TemplateViewModel extends FlutterFlowModel<TemplateViewWidget> {
  ///  Local state fields for this page.

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

  ///  State fields for stateful widgets in this page.

  // State field(s) for surveiDropdown widget.
  String? surveiDropdownValue;
  FormFieldController<String>? surveiDropdownValueController;
  // State field(s) for kegDropdown widget.
  String? kegDropdownValue;
  FormFieldController<String>? kegDropdownValueController;
  // State field(s) for posisiDropdown widget.
  String? posisiDropdownValue;
  FormFieldController<String>? posisiDropdownValueController;
  // Model for dataTableHistoryMitra component.
  late DataTableHistoryMitraModel dataTableHistoryMitraModel;

  @override
  void initState(BuildContext context) {
    dataTableHistoryMitraModel =
        createModel(context, () => DataTableHistoryMitraModel());
  }

  @override
  void dispose() {
    dataTableHistoryMitraModel.dispose();
  }
}

import '/backend/supabase/supabase.dart';
import '/components/navigation_menu/navigation_menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'history_mitra_page_widget.dart' show HistoryMitraPageWidget;
import 'package:flutter/material.dart';

class HistoryMitraPageModel extends FlutterFlowModel<HistoryMitraPageWidget> {
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

  List<String> statusPenawaranList = [
    'Diterima',
    'Penawaran Kerja Dibatalkan',
    'Mengundurkan Diri',
    'Menunggu Konfrimasi Calon Mitra',
    'Belum Konfirmasi',
    'Ditolak (Mitra)',
    'Ditolak'
  ];
  void addToStatusPenawaranList(String item) => statusPenawaranList.add(item);
  void removeFromStatusPenawaranList(String item) =>
      statusPenawaranList.remove(item);
  void removeAtIndexFromStatusPenawaranList(int index) =>
      statusPenawaranList.removeAt(index);
  void insertAtIndexInStatusPenawaranList(int index, String item) =>
      statusPenawaranList.insert(index, item);
  void updateStatusPenawaranListAtIndex(int index, Function(String) updateFn) =>
      statusPenawaranList[index] = updateFn(statusPenawaranList[index]);

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
  // State field(s) for statusDropdown widget.
  List<String>? statusDropdownValue;
  FormFieldController<List<String>>? statusDropdownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in statusDropdown widget.
  List<History1371ViewRow>? historyMitra;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<History1371ViewRow>();
  // Model for NavigationMenu component.
  late NavigationMenuModel navigationMenuModel;

  @override
  void initState(BuildContext context) {
    navigationMenuModel = createModel(context, () => NavigationMenuModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    navigationMenuModel.dispose();
  }
}

import '/backend/supabase/supabase.dart';
import '/components/data_table_history_mitra_widget.dart';
import '/components/navigation_menu/navigation_menu_widget.dart';
import '/components/side_navigation_web/side_navigation_web_widget.dart';
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

  List<String> statusListDummy = [
    'Belum Dikonfirmasi',
    'Diterima',
    'Ditolak',
    'Ditolak (Mitra)',
    'Mengundurkan Diri',
    'Menunggu Konfirmasi Calon Mitra',
    'Penawaran Kerja Dibatalkan'
  ];
  void addToStatusListDummy(String item) => statusListDummy.add(item);
  void removeFromStatusListDummy(String item) => statusListDummy.remove(item);
  void removeAtIndexFromStatusListDummy(int index) =>
      statusListDummy.removeAt(index);
  void insertAtIndexInStatusListDummy(int index, String item) =>
      statusListDummy.insert(index, item);
  void updateStatusListDummyAtIndex(int index, Function(String) updateFn) =>
      statusListDummy[index] = updateFn(statusListDummy[index]);

  ///  State fields for stateful widgets in this page.

  // Model for SideNavigationWeb component.
  late SideNavigationWebModel sideNavigationWebModel;
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
  // Model for dataTableHistoryMitra component.
  late DataTableHistoryMitraModel dataTableHistoryMitraModel;
  // Model for NavigationMenu component.
  late NavigationMenuModel navigationMenuModel;

  @override
  void initState(BuildContext context) {
    sideNavigationWebModel =
        createModel(context, () => SideNavigationWebModel());
    dataTableHistoryMitraModel =
        createModel(context, () => DataTableHistoryMitraModel());
    navigationMenuModel = createModel(context, () => NavigationMenuModel());
  }

  @override
  void dispose() {
    sideNavigationWebModel.dispose();
    dataTableHistoryMitraModel.dispose();
    navigationMenuModel.dispose();
  }
}

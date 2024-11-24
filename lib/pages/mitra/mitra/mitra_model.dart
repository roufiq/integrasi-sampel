import '/backend/supabase/supabase.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'mitra_widget.dart' show MitraWidget;
import 'package:flutter/material.dart';

class MitraModel extends FlutterFlowModel<MitraWidget> {
  ///  Local state fields for this page.

  List<String> statusPenawaran = [
    'Diterima',
    'Menunggu Konfrimasi Calon Mitra',
    'Belum Konfirmasi',
    'Ditolak (Mitra)',
    'Ditolak',
    'Mengundurkan Diri',
    'Penawaran Kerja Dibatalkan'
  ];
  void addToStatusPenawaran(String item) => statusPenawaran.add(item);
  void removeFromStatusPenawaran(String item) => statusPenawaran.remove(item);
  void removeAtIndexFromStatusPenawaran(int index) =>
      statusPenawaran.removeAt(index);
  void insertAtIndexInStatusPenawaran(int index, String item) =>
      statusPenawaran.insert(index, item);
  void updateStatusPenawaranAtIndex(int index, Function(String) updateFn) =>
      statusPenawaran[index] = updateFn(statusPenawaran[index]);

  List<String> statusSurvei = ['Belum Berjalan', 'Berjalan', 'Selesai'];
  void addToStatusSurvei(String item) => statusSurvei.add(item);
  void removeFromStatusSurvei(String item) => statusSurvei.remove(item);
  void removeAtIndexFromStatusSurvei(int index) => statusSurvei.removeAt(index);
  void insertAtIndexInStatusSurvei(int index, String item) =>
      statusSurvei.insert(index, item);
  void updateStatusSurveiAtIndex(int index, Function(String) updateFn) =>
      statusSurvei[index] = updateFn(statusSurvei[index]);

  List<SurveiRow> survei = [];
  void addToSurvei(SurveiRow item) => survei.add(item);
  void removeFromSurvei(SurveiRow item) => survei.remove(item);
  void removeAtIndexFromSurvei(int index) => survei.removeAt(index);
  void insertAtIndexInSurvei(int index, SurveiRow item) =>
      survei.insert(index, item);
  void updateSurveiAtIndex(int index, Function(SurveiRow) updateFn) =>
      survei[index] = updateFn(survei[index]);

  List<History1371ViewRow> mitra = [];
  void addToMitra(History1371ViewRow item) => mitra.add(item);
  void removeFromMitra(History1371ViewRow item) => mitra.remove(item);
  void removeAtIndexFromMitra(int index) => mitra.removeAt(index);
  void insertAtIndexInMitra(int index, History1371ViewRow item) =>
      mitra.insert(index, item);
  void updateMitraAtIndex(int index, Function(History1371ViewRow) updateFn) =>
      mitra[index] = updateFn(mitra[index]);

  List<String> statusKegiatan = ['Belum Mulai', 'Berjalan', 'Selesai'];
  void addToStatusKegiatan(String item) => statusKegiatan.add(item);
  void removeFromStatusKegiatan(String item) => statusKegiatan.remove(item);
  void removeAtIndexFromStatusKegiatan(int index) =>
      statusKegiatan.removeAt(index);
  void insertAtIndexInStatusKegiatan(int index, String item) =>
      statusKegiatan.insert(index, item);
  void updateStatusKegiatanAtIndex(int index, Function(String) updateFn) =>
      statusKegiatan[index] = updateFn(statusKegiatan[index]);

  List<History1371ViewRow> searchRes = [];
  void addToSearchRes(History1371ViewRow item) => searchRes.add(item);
  void removeFromSearchRes(History1371ViewRow item) => searchRes.remove(item);
  void removeAtIndexFromSearchRes(int index) => searchRes.removeAt(index);
  void insertAtIndexInSearchRes(int index, History1371ViewRow item) =>
      searchRes.insert(index, item);
  void updateSearchResAtIndex(
          int index, Function(History1371ViewRow) updateFn) =>
      searchRes[index] = updateFn(searchRes[index]);

  ///  State fields for stateful widgets in this page.

  // Model for SideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for ChoiceChipsSurvei widget.
  FormFieldController<List<String>>? choiceChipsSurveiValueController;
  String? get choiceChipsSurveiValue =>
      choiceChipsSurveiValueController?.value?.firstOrNull;
  set choiceChipsSurveiValue(String? val) =>
      choiceChipsSurveiValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - Query Rows] action in ChoiceChipsSurvei widget.
  List<SurveiRow>? surveiList;
  // State field(s) for DropDownSurvei widget.
  String? dropDownSurveiValue;
  FormFieldController<String>? dropDownSurveiValueController;
  // State field(s) for ChoiceChipsKegiatan widget.
  FormFieldController<List<String>>? choiceChipsKegiatanValueController;
  String? get choiceChipsKegiatanValue =>
      choiceChipsKegiatanValueController?.value?.firstOrNull;
  set choiceChipsKegiatanValue(String? val) =>
      choiceChipsKegiatanValueController?.value = val != null ? [val] : [];
  Completer<List<KegSurveyRow>>? requestCompleter;
  // State field(s) for DropDownKeg widget.
  int? dropDownKegValue;
  FormFieldController<int>? dropDownKegValueController;
  // State field(s) for DropDownPosisi widget.
  int? dropDownPosisiValue;
  FormFieldController<int>? dropDownPosisiValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDownPosisi widget.
  List<History1371ViewRow>? mitraList;
  // State field(s) for DropDownPenawaran widget.
  List<String>? dropDownPenawaranValue;
  FormFieldController<List<String>>? dropDownPenawaranValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<History1371ViewRow>();
  // Stores action output result for [Backend Call - Query Rows] action in IconButtonView widget.
  List<Mitra1371Row>? mitras;
  // Stores action output result for [Backend Call - Query Rows] action in IconButtonView widget.
  List<History1371ViewRow>? history;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

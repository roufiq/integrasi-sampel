import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'input_sampel_page_widget.dart' show InputSampelPageWidget;
import 'package:flutter/material.dart';

class InputSampelPageModel extends FlutterFlowModel<InputSampelPageWidget> {
  ///  Local state fields for this page.

  List<SurveiRow> survei = [];
  void addToSurvei(SurveiRow item) => survei.add(item);
  void removeFromSurvei(SurveiRow item) => survei.remove(item);
  void removeAtIndexFromSurvei(int index) => survei.removeAt(index);
  void insertAtIndexInSurvei(int index, SurveiRow item) =>
      survei.insert(index, item);
  void updateSurveiAtIndex(int index, Function(SurveiRow) updateFn) =>
      survei[index] = updateFn(survei[index]);

  List<String> statusSurvei = ['Belum Berjalan', 'Berjalan', 'Selesai'];
  void addToStatusSurvei(String item) => statusSurvei.add(item);
  void removeFromStatusSurvei(String item) => statusSurvei.remove(item);
  void removeAtIndexFromStatusSurvei(int index) => statusSurvei.removeAt(index);
  void insertAtIndexInStatusSurvei(int index, String item) =>
      statusSurvei.insert(index, item);
  void updateStatusSurveiAtIndex(int index, Function(String) updateFn) =>
      statusSurvei[index] = updateFn(statusSurvei[index]);

  List<String> statusKegiatan = ['Belum Mulai', 'Berjalan', 'Selesai'];
  void addToStatusKegiatan(String item) => statusKegiatan.add(item);
  void removeFromStatusKegiatan(String item) => statusKegiatan.remove(item);
  void removeAtIndexFromStatusKegiatan(int index) =>
      statusKegiatan.removeAt(index);
  void insertAtIndexInStatusKegiatan(int index, String item) =>
      statusKegiatan.insert(index, item);
  void updateStatusKegiatanAtIndex(int index, Function(String) updateFn) =>
      statusKegiatan[index] = updateFn(statusKegiatan[index]);

  List<dynamic> data = [];
  void addToData(dynamic item) => data.add(item);
  void removeFromData(dynamic item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, dynamic item) => data.insert(index, item);
  void updateDataAtIndex(int index, Function(dynamic) updateFn) =>
      data[index] = updateFn(data[index]);

  ///  State fields for stateful widgets in this page.

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
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
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

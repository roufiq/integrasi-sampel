import '/backend/supabase/supabase.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/components/switch_is_perusahaan/switch_is_perusahaan_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'assign_unit_sampel_page_widget.dart' show AssignUnitSampelPageWidget;
import 'package:flutter/material.dart';

class AssignUnitSampelPageModel
    extends FlutterFlowModel<AssignUnitSampelPageWidget> {
  ///  Local state fields for this page.

  List<dynamic> surveiList = [];
  void addToSurveiList(dynamic item) => surveiList.add(item);
  void removeFromSurveiList(dynamic item) => surveiList.remove(item);
  void removeAtIndexFromSurveiList(int index) => surveiList.removeAt(index);
  void insertAtIndexInSurveiList(int index, dynamic item) =>
      surveiList.insert(index, item);
  void updateSurveiListAtIndex(int index, Function(dynamic) updateFn) =>
      surveiList[index] = updateFn(surveiList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in AssignUnitSampelPage widget.
  List<Profile1371Row>? profileRow;
  // Stores action output result for [Custom Action - loadData] action in AssignUnitSampelPage widget.
  List<dynamic>? surveiUsahaList;
  // Model for SideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Custom Action - loadDataFiltered] action in ChoiceChips widget.
  List<dynamic>? surveiListFiltered;
  // Stores action output result for [Custom Action - loadData] action in ChoiceChips widget.
  List<dynamic>? surveiListAll;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Models for switchIsPerusahaan dynamic component.
  late FlutterFlowDynamicModels<SwitchIsPerusahaanModel>
      switchIsPerusahaanModels;
  // Stores action output result for [Custom Action - loadDataFiltered] action in switchIsPerusahaan widget.
  List<dynamic>? surveiListFilteredCall;
  // Stores action output result for [Custom Action - loadDataFiltered] action in switchIsDilaksanakan widget.
  List<dynamic>? surveiListFilteredCallCopy;
  // Stores action output result for [Custom Action - loadData] action in switchIsDilaksanakan widget.
  List<dynamic>? loadDataAll;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    switchIsPerusahaanModels =
        FlutterFlowDynamicModels(() => SwitchIsPerusahaanModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    paginatedDataTableController.dispose();
    switchIsPerusahaanModels.dispose();
  }

  /// Action blocks.
  Future test(BuildContext context) async {}
}

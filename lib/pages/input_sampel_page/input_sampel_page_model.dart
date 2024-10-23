import '/backend/supabase/supabase.dart';
import '/components/navigation_menu/navigation_menu_widget.dart';
import '/components/side_navigation_web/side_navigation_web_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'input_sampel_page_widget.dart' show InputSampelPageWidget;
import 'package:flutter/material.dart';

class InputSampelPageModel extends FlutterFlowModel<InputSampelPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavigationMenu component.
  late NavigationMenuModel navigationMenuModel;
  // Model for SideNavigationWeb component.
  late SideNavigationWebModel sideNavigationWebModel;
  // State field(s) for surveiDropdown widget.
  String? surveiDropdownValue;
  FormFieldController<String>? surveiDropdownValueController;
  // State field(s) for kegDropdown widget.
  int? kegDropdownValue;
  FormFieldController<int>? kegDropdownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in kegDropdown widget.
  List<AssignSampelUsahaRow>? sampel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<AssignSampelUsahaRow>();

  @override
  void initState(BuildContext context) {
    navigationMenuModel = createModel(context, () => NavigationMenuModel());
    sideNavigationWebModel =
        createModel(context, () => SideNavigationWebModel());
  }

  @override
  void dispose() {
    navigationMenuModel.dispose();
    sideNavigationWebModel.dispose();
    paginatedDataTableController.dispose();
  }
}

import '/components/navigation_menu/navigation_menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'testing_page_widget.dart' show TestingPageWidget;
import 'package:flutter/material.dart';

class TestingPageModel extends FlutterFlowModel<TestingPageWidget> {
  ///  Local state fields for this page.

  List<dynamic> statePageList = [];
  void addToStatePageList(dynamic item) => statePageList.add(item);
  void removeFromStatePageList(dynamic item) => statePageList.remove(item);
  void removeAtIndexFromStatePageList(int index) =>
      statePageList.removeAt(index);
  void insertAtIndexInStatePageList(int index, dynamic item) =>
      statePageList.insert(index, item);
  void updateStatePageListAtIndex(int index, Function(dynamic) updateFn) =>
      statePageList[index] = updateFn(statePageList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for NavigationMenu component.
  late NavigationMenuModel navigationMenuModel;
  // State field(s) for TextSearch widget.
  FocusNode? textSearchFocusNode;
  TextEditingController? textSearchTextController;
  String? Function(BuildContext, String?)? textSearchTextControllerValidator;
  // Stores action output result for [Custom Action - loadData] action in Button widget.
  List<dynamic>? pageList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {
    navigationMenuModel = createModel(context, () => NavigationMenuModel());
  }

  @override
  void dispose() {
    navigationMenuModel.dispose();
    textSearchFocusNode?.dispose();
    textSearchTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}

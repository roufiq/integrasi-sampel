import '/components/navigation_menu/navigation_menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<dynamic> stateSampleList = [];
  void addToStateSampleList(dynamic item) => stateSampleList.add(item);
  void removeFromStateSampleList(dynamic item) => stateSampleList.remove(item);
  void removeAtIndexFromStateSampleList(int index) =>
      stateSampleList.removeAt(index);
  void insertAtIndexInStateSampleList(int index, dynamic item) =>
      stateSampleList.insert(index, item);
  void updateStateSampleListAtIndex(int index, Function(dynamic) updateFn) =>
      stateSampleList[index] = updateFn(stateSampleList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for NavigationMenu component.
  late NavigationMenuModel navigationMenuModel;
  // State field(s) for TextSearch widget.
  FocusNode? textSearchFocusNode;
  TextEditingController? textSearchTextController;
  String? Function(BuildContext, String?)? textSearchTextControllerValidator;
  // Stores action output result for [Custom Action - searchTable] action in Button widget.
  List<dynamic>? sampleList;
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

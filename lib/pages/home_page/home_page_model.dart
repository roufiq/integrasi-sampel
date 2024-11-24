import '/components/navigation_menu/navigation_menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<dynamic> stateSample = [];
  void addToStateSample(dynamic item) => stateSample.add(item);
  void removeFromStateSample(dynamic item) => stateSample.remove(item);
  void removeAtIndexFromStateSample(int index) => stateSample.removeAt(index);
  void insertAtIndexInStateSample(int index, dynamic item) =>
      stateSample.insert(index, item);
  void updateStateSampleAtIndex(int index, Function(dynamic) updateFn) =>
      stateSample[index] = updateFn(stateSample[index]);

  ///  State fields for stateful widgets in this page.

  // Model for NavigationMenu component.
  late NavigationMenuModel navigationMenuModel;
  // State field(s) for TextSearch widget.
  FocusNode? textSearchFocusNode;
  TextEditingController? textSearchTextController;
  String? Function(BuildContext, String?)? textSearchTextControllerValidator;
  // Stores action output result for [Custom Action - searchTable] action in Button widget.
  List<dynamic>? sampleList;
  // State field(s) for TextSearchTerms widget.
  FocusNode? textSearchTermsFocusNode;
  TextEditingController? textSearchTermsTextController;
  String? Function(BuildContext, String?)?
      textSearchTermsTextControllerValidator;
  List<String> simpleSearchResults = [];
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

    textSearchTermsFocusNode?.dispose();
    textSearchTermsTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}

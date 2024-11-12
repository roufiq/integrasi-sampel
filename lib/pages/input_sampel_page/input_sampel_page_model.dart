import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'input_sampel_page_widget.dart' show InputSampelPageWidget;
import 'package:flutter/material.dart';

class InputSampelPageModel extends FlutterFlowModel<InputSampelPageWidget> {
  ///  Local state fields for this page.

  List<SampelStruct> daftarSampelList = [];
  void addToDaftarSampelList(SampelStruct item) => daftarSampelList.add(item);
  void removeFromDaftarSampelList(SampelStruct item) =>
      daftarSampelList.remove(item);
  void removeAtIndexFromDaftarSampelList(int index) =>
      daftarSampelList.removeAt(index);
  void insertAtIndexInDaftarSampelList(int index, SampelStruct item) =>
      daftarSampelList.insert(index, item);
  void updateDaftarSampelListAtIndex(
          int index, Function(SampelStruct) updateFn) =>
      daftarSampelList[index] = updateFn(daftarSampelList[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for TextFieldNama widget.
  FocusNode? textFieldNamaFocusNode;
  TextEditingController? textFieldNamaTextController;
  String? Function(BuildContext, String?)? textFieldNamaTextControllerValidator;
  // State field(s) for DropDownFilter widget.
  String? dropDownFilterValue;
  FormFieldController<String>? dropDownFilterValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    textFieldNamaFocusNode?.dispose();
    textFieldNamaTextController?.dispose();
  }
}

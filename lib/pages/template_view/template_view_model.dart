import '/components/navigation_menu/navigation_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'template_view_widget.dart' show TemplateViewWidget;
import 'package:flutter/material.dart';

class TemplateViewModel extends FlutterFlowModel<TemplateViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavigationMenu component.
  late NavigationMenuModel navigationMenuModel;

  @override
  void initState(BuildContext context) {
    navigationMenuModel = createModel(context, () => NavigationMenuModel());
  }

  @override
  void dispose() {
    navigationMenuModel.dispose();
  }
}

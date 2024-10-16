import '/components/navigation_menu/navigation_menu_widget.dart';
import '/components/side_navigation_web/side_navigation_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideNavigationWeb component.
  late SideNavigationWebModel sideNavigationWebModel;
  // Model for NavigationMenu component.
  late NavigationMenuModel navigationMenuModel;

  @override
  void initState(BuildContext context) {
    sideNavigationWebModel =
        createModel(context, () => SideNavigationWebModel());
    navigationMenuModel = createModel(context, () => NavigationMenuModel());
  }

  @override
  void dispose() {
    sideNavigationWebModel.dispose();
    navigationMenuModel.dispose();
  }
}

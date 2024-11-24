import '/components/navigation_menu/navigation_menu_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideNav component.
  late SideNavModel sideNavModel;
  // Model for NavigationMenu component.
  late NavigationMenuModel navigationMenuModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    navigationMenuModel = createModel(context, () => NavigationMenuModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    navigationMenuModel.dispose();
  }
}

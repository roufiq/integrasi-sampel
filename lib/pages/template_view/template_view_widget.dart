import '/components/navigation_menu/navigation_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'template_view_model.dart';
export 'template_view_model.dart';

class TemplateViewWidget extends StatefulWidget {
  const TemplateViewWidget({super.key});

  @override
  State<TemplateViewWidget> createState() => _TemplateViewWidgetState();
}

class _TemplateViewWidgetState extends State<TemplateViewWidget> {
  late TemplateViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TemplateViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Template',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Sora',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              if (true)
                wrapWithModel(
                  model: _model.navigationMenuModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const NavigationMenuWidget(
                    selectedPageIndex: 2,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

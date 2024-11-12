import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'navigation_options_model.dart';
export 'navigation_options_model.dart';

class NavigationOptionsWidget extends StatefulWidget {
  const NavigationOptionsWidget({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    this.onTapAction,
  });

  final String? title;
  final String? description;
  final Widget? icon;
  final Future Function()? onTapAction;

  @override
  State<NavigationOptionsWidget> createState() =>
      _NavigationOptionsWidgetState();
}

class _NavigationOptionsWidgetState extends State<NavigationOptionsWidget> {
  late NavigationOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigationOptionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 38.0,
                    height: 38.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Opacity(
                      opacity: 0.7,
                      child: widget.icon!,
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.title,
                            'Menu',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.description,
                            'desc',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ]
                          .divide(const SizedBox(height: 4.0))
                          .around(const SizedBox(height: 4.0)),
                    ),
                  ),
                ].divide(const SizedBox(width: 24.0)).around(const SizedBox(width: 24.0)),
              ),
            ),
          ),
          Opacity(
            opacity: 0.1,
            child: Divider(
              thickness: 0.5,
              color: FlutterFlowTheme.of(context).accent1,
            ),
          ),
        ],
      ),
    );
  }
}

import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'switch_is_dilaksanakan_model.dart';
export 'switch_is_dilaksanakan_model.dart';

class SwitchIsDilaksanakanWidget extends StatefulWidget {
  const SwitchIsDilaksanakanWidget({
    super.key,
    this.parameter1,
    this.kdSurvei,
    this.onUpdate,
  });

  final bool? parameter1;
  final String? kdSurvei;
  final Future Function()? onUpdate;

  @override
  State<SwitchIsDilaksanakanWidget> createState() =>
      _SwitchIsDilaksanakanWidgetState();
}

class _SwitchIsDilaksanakanWidgetState
    extends State<SwitchIsDilaksanakanWidget> {
  late SwitchIsDilaksanakanModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchIsDilaksanakanModel());

    _model.switchValue = widget.parameter1!;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: _model.switchValue!,
      onChanged: (newValue) async {
        safeSetState(() => _model.switchValue = newValue);
        if (newValue) {
          await SurveiTable().update(
            data: {
              'is_dilaksanakan': false,
            },
            matchingRows: (rows) => rows.eqOrNull(
              'kd_survei',
              widget.kdSurvei,
            ),
          );
          await widget.onUpdate?.call();
        } else {
          await SurveiTable().update(
            data: {
              'is_dilaksanakan': false,
            },
            matchingRows: (rows) => rows.eqOrNull(
              'kd_survei',
              widget.kdSurvei,
            ),
          );
          await widget.onUpdate?.call();
        }
      },
      activeColor: FlutterFlowTheme.of(context).alternate,
      activeTrackColor: FlutterFlowTheme.of(context).success,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
    );
  }
}

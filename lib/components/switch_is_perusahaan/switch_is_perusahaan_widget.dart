import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'switch_is_perusahaan_model.dart';
export 'switch_is_perusahaan_model.dart';

class SwitchIsPerusahaanWidget extends StatefulWidget {
  const SwitchIsPerusahaanWidget({
    super.key,
    this.parameter1,
    this.kdSurvei,
    this.onUpdate,
  });

  final bool? parameter1;
  final String? kdSurvei;
  final Future Function()? onUpdate;

  @override
  State<SwitchIsPerusahaanWidget> createState() =>
      _SwitchIsPerusahaanWidgetState();
}

class _SwitchIsPerusahaanWidgetState extends State<SwitchIsPerusahaanWidget> {
  late SwitchIsPerusahaanModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchIsPerusahaanModel());

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
              'is_sampel_perusahaan': true,
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
              'is_sampel_perusahaan': false,
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

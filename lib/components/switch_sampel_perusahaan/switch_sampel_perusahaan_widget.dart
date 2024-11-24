import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'switch_sampel_perusahaan_model.dart';
export 'switch_sampel_perusahaan_model.dart';

class SwitchSampelPerusahaanWidget extends StatefulWidget {
  const SwitchSampelPerusahaanWidget({
    super.key,
    required this.isSampelPerusahaan,
    required this.survei,
  });

  final bool? isSampelPerusahaan;
  final SurveiStruct? survei;

  @override
  State<SwitchSampelPerusahaanWidget> createState() =>
      _SwitchSampelPerusahaanWidgetState();
}

class _SwitchSampelPerusahaanWidgetState
    extends State<SwitchSampelPerusahaanWidget> {
  late SwitchSampelPerusahaanModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchSampelPerusahaanModel());

    _model.switchValue = widget.isSampelPerusahaan!;
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
              widget.survei?.kdSurvei,
            ),
          );
        } else {
          await SurveiTable().update(
            data: {
              'is_sampel_perusahaan': false,
            },
            matchingRows: (rows) => rows.eqOrNull(
              'kd_survei',
              widget.survei?.kdSurvei,
            ),
          );
        }
      },
      activeColor: FlutterFlowTheme.of(context).success,
      activeTrackColor: FlutterFlowTheme.of(context).success,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
    );
  }
}

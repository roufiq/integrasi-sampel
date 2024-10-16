import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'data_table_history_mitra_model.dart';
export 'data_table_history_mitra_model.dart';

class DataTableHistoryMitraWidget extends StatefulWidget {
  const DataTableHistoryMitraWidget({
    super.key,
    required this.historyList,
  });

  final List<History1371ViewRow>? historyList;

  @override
  State<DataTableHistoryMitraWidget> createState() =>
      _DataTableHistoryMitraWidgetState();
}

class _DataTableHistoryMitraWidgetState
    extends State<DataTableHistoryMitraWidget> {
  late DataTableHistoryMitraModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataTableHistoryMitraModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Builder(
          builder: (context) {
            final historyMitra = widget.historyList!.toList();
            if (historyMitra.isEmpty) {
              return Image.asset(
                'assets/images/Error_Animation_-_1727763541893.gif',
              );
            }

            return FlutterFlowDataTable<History1371ViewRow>(
              controller: _model.paginatedDataTableController,
              data: historyMitra,
              columnsBuilder: (onSortChanged) => [
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Text(
                      'Nama Lengkap',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Text(
                      'Status Penugasan',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Text(
                      'Kegiatan',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Action',
                      options: FFButtonOptions(
                        width: 100.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
              dataRowBuilder: (historyMitraItem, historyMitraIndex, selected,
                      onSelectChanged) =>
                  DataRow(
                color: WidgetStateProperty.all(
                  historyMitraIndex % 2 == 0
                      ? FlutterFlowTheme.of(context).secondaryBackground
                      : FlutterFlowTheme.of(context).primaryBackground,
                ),
                cells: [
                  Text(
                    valueOrDefault<String>(
                      historyMitraItem.namaLengkap,
                      'nama_lengkap',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      historyMitraItem.namaStatus,
                      'nama_status',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      historyMitraItem.namaSurvei,
                      'jumlah_sampel',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: '',
                        icon: const Icon(
                          Icons.assignment_add,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 30.0,
                          height: 30.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).success,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: '',
                        icon: const Icon(
                          Icons.assignment_add,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 30.0,
                          height: 30.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).warning,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: '',
                        icon: const Icon(
                          Icons.assignment_add,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 30.0,
                          height: 30.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).error,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ].divide(const SizedBox(width: 4.0)),
                  ),
                ].map((c) => DataCell(c)).toList(),
              ),
              emptyBuilder: () => Image.asset(
                'assets/images/Error_Animation_-_1727763541893.gif',
              ),
              paginated: true,
              selectable: false,
              hidePaginator: false,
              showFirstLastButtons: true,
              height: 800.0,
              minWidth: 600.0,
              headingRowHeight: 90.0,
              dataRowHeight: 48.0,
              columnSpacing: 10.0,
              headingRowColor: FlutterFlowTheme.of(context).secondary,
              borderRadius: BorderRadius.circular(8.0),
              addHorizontalDivider: true,
              addTopAndBottomDivider: false,
              hideDefaultHorizontalDivider: true,
              horizontalDividerColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
              horizontalDividerThickness: 1.0,
              addVerticalDivider: false,
            );
          },
        ),
      ],
    );
  }
}

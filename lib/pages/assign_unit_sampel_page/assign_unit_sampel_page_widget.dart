import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/components/switch_is_dilaksanakan/switch_is_dilaksanakan_widget.dart';
import '/components/switch_is_perusahaan/switch_is_perusahaan_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'assign_unit_sampel_page_model.dart';
export 'assign_unit_sampel_page_model.dart';

class AssignUnitSampelPageWidget extends StatefulWidget {
  const AssignUnitSampelPageWidget({super.key});

  @override
  State<AssignUnitSampelPageWidget> createState() =>
      _AssignUnitSampelPageWidgetState();
}

class _AssignUnitSampelPageWidgetState
    extends State<AssignUnitSampelPageWidget> {
  late AssignUnitSampelPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssignUnitSampelPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.profileRow = await Profile1371Table().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          currentUserUid,
        ),
      );
      FFAppState().isAdminRole =
          _model.profileRow?.first.roles.contains('Admin') == true;
      FFAppState().isKetuaTimRole =
          _model.profileRow?.first.roles.contains('Ketua Tim') == true;
      FFAppState().isKepalaRole =
          _model.profileRow?.first.roles.contains('Kepala') == true;
      FFAppState().isAnggotaRole =
          _model.profileRow?.first.roles.contains('Anggota') == true;
      FFAppState().update(() {});
      _model.surveiList = [];
      _model.surveiUsahaList = await actions.loadData(
        'survei',
        'kd_survei, nama, status, is_sampel_perusahaan',
      );
      _model.surveiList = _model.surveiUsahaList!.toList().cast<dynamic>();
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Assign Unit Sampel',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                wrapWithModel(
                  model: _model.sideNavModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const SideNavWidget(),
                ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: FlutterFlowChoiceChips(
                            options: const [
                              ChipData('Belum Berjalan', Icons.close),
                              ChipData('Berjalan', Icons.check),
                              ChipData('Selesai', Icons.done_all),
                              ChipData('All')
                            ],
                            onChanged: (val) async {
                              safeSetState(() =>
                                  _model.choiceChipsValue = val?.firstOrNull);
                              if (_model.choiceChipsValue != 'All') {
                                _model.surveiList = [];
                                safeSetState(() {});
                                _model.surveiListFiltered =
                                    await actions.loadDataFiltered(
                                  'survei',
                                  'kd_survei,nama,tipe,status,is_bps,is_sampel_perusahaan, is_dilaksanakan',
                                  'status',
                                  _model.choiceChipsValue!,
                                  'kd_survei',
                                );
                                _model.surveiList = _model.surveiListFiltered!
                                    .toList()
                                    .cast<dynamic>();
                                safeSetState(() {});
                              } else {
                                _model.surveiList = [];
                                safeSetState(() {});
                                _model.surveiListAll = await actions.loadData(
                                  'survei',
                                  '*',
                                );
                                _model.surveiList = _model.surveiListAll!
                                    .toList()
                                    .cast<dynamic>();
                                safeSetState(() {});
                              }

                              safeSetState(() {});
                            },
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              iconColor: FlutterFlowTheme.of(context).info,
                              iconSize: 16.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              iconSize: 16.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 8.0,
                            multiselect: false,
                            initialized: _model.choiceChipsValue != null,
                            alignment: WrapAlignment.spaceEvenly,
                            controller: _model.choiceChipsValueController ??=
                                FormFieldController<List<String>>(
                              ['All'],
                            ),
                            wrapped: true,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final dataTable = _model.surveiList.toList();

                            return FlutterFlowDataTable<dynamic>(
                              controller: _model.paginatedDataTableController,
                              data: dataTable,
                              columnsBuilder: (onSortChanged) => [
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Kode Survei',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 11.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 12.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 12.0;
                                              } else {
                                                return 12.0;
                                              }
                                            }(),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Nama Survei',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 11.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 12.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 12.0;
                                              } else {
                                                return 12.0;
                                              }
                                            }(),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Status',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 11.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 12.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 12.0;
                                              } else {
                                                return 12.0;
                                              }
                                            }(),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Sampel Perusahaan',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 11.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 12.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 12.0;
                                              } else {
                                                return 12.0;
                                              }
                                            }(),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Dilaksanakan di 1371',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 11.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 12.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 12.0;
                                              } else {
                                                return 12.0;
                                              }
                                            }(),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                              dataRowBuilder: (dataTableItem, dataTableIndex,
                                      selected, onSelectChanged) =>
                                  DataRow(
                                color: WidgetStateProperty.all(
                                  dataTableIndex % 2 == 0
                                      ? FlutterFlowTheme.of(context)
                                          .secondaryBackground
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                ),
                                cells: [
                                  Text(
                                    valueOrDefault<String>(
                                      SurveiStruct.maybeFromMap(dataTableItem)
                                          ?.kdSurvei,
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 10.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 11.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 11.0;
                                            } else {
                                              return 11.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      SurveiStruct.maybeFromMap(dataTableItem)
                                          ?.nama,
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 10.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 11.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 11.0;
                                            } else {
                                              return 11.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      SurveiStruct.maybeFromMap(dataTableItem)
                                          ?.status,
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 10.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 11.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 11.0;
                                            } else {
                                              return 11.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  wrapWithModel(
                                    model: _model.switchIsPerusahaanModels
                                        .getModel(
                                      SurveiStruct.maybeFromMap(dataTableItem)!
                                          .kdSurvei,
                                      dataTableIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    updateOnChange: true,
                                    child: SwitchIsPerusahaanWidget(
                                      key: Key(
                                        'Keypmp_${SurveiStruct.maybeFromMap(dataTableItem)!.kdSurvei}',
                                      ),
                                      parameter1: SurveiStruct.maybeFromMap(
                                              dataTableItem)
                                          ?.isSampelPerusahaan,
                                      kdSurvei: SurveiStruct.maybeFromMap(
                                              dataTableItem)
                                          ?.kdSurvei,
                                      onUpdate: () async {
                                        _model.surveiListFilteredCall =
                                            await actions.loadDataFiltered(
                                          'survei',
                                          'kd_survei,nama,tipe,status,is_bps,is_sampel_perusahaan, is_dilaksanakan',
                                          'status',
                                          _model.choiceChipsValue!,
                                          'kd_survei',
                                        );
                                        _model.surveiList = _model
                                            .surveiListFilteredCall!
                                            .toList()
                                            .cast<dynamic>();
                                        safeSetState(() {});

                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  SwitchIsDilaksanakanWidget(
                                    key: Key(
                                        'Key8g2_${dataTableIndex}_of_${dataTable.length}'),
                                    parameter1:
                                        SurveiStruct.maybeFromMap(dataTableItem)
                                            ?.isDilaksanakan,
                                    kdSurvei:
                                        SurveiStruct.maybeFromMap(dataTableItem)
                                            ?.kdSurvei,
                                    onUpdate: () async {
                                      if (_model.choiceChipsValue != 'All') {
                                        _model.surveiListFilteredCallCopy =
                                            await actions.loadDataFiltered(
                                          'survei',
                                          'kd_survei,nama,tipe,status,is_bps,is_sampel_perusahaan, is_dilaksanakan',
                                          'status',
                                          _model.choiceChipsValue!,
                                          'kd_survei',
                                        );
                                        _model.surveiList = _model
                                            .surveiListFilteredCallCopy!
                                            .toList()
                                            .cast<dynamic>();
                                        safeSetState(() {});
                                      } else {
                                        _model.loadDataAll =
                                            await actions.loadData(
                                          'survei',
                                          'kd_survei,nama,tipe,status,is_bps,is_sampel_perusahaan, is_dilaksanakan',
                                        );
                                        _model.surveiList = _model.loadDataAll!
                                            .toList()
                                            .cast<dynamic>();
                                        safeSetState(() {});
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                                ].map((c) => DataCell(c)).toList(),
                              ),
                              paginated: true,
                              selectable: false,
                              hidePaginator: false,
                              showFirstLastButtons: true,
                              width: double.infinity,
                              height: 500.0,
                              minWidth: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return MediaQuery.sizeOf(context).width;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return MediaQuery.sizeOf(context).width;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return MediaQuery.sizeOf(context).width;
                                } else {
                                  return 470.0;
                                }
                              }(),
                              headingRowHeight: 56.0,
                              dataRowHeight: 48.0,
                              columnSpacing: 20.0,
                              headingRowColor:
                                  FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(8.0),
                              addHorizontalDivider: true,
                              addTopAndBottomDivider: true,
                              hideDefaultHorizontalDivider: true,
                              horizontalDividerColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              horizontalDividerThickness: 1.0,
                              addVerticalDivider: false,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import '/backend/supabase/supabase.dart';
import '/components/data_table_history_mitra/data_table_history_mitra_widget.dart';
import '/components/navigation_menu/navigation_menu_widget.dart';
import '/components/side_navigation_web/side_navigation_web_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'history_mitra_page_model.dart';
export 'history_mitra_page_model.dart';

class HistoryMitraPageWidget extends StatefulWidget {
  const HistoryMitraPageWidget({super.key});

  @override
  State<HistoryMitraPageWidget> createState() => _HistoryMitraPageWidgetState();
}

class _HistoryMitraPageWidgetState extends State<HistoryMitraPageWidget> {
  late HistoryMitraPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoryMitraPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: MediaQuery.sizeOf(context).width <= 991.0
          ? AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Text(
                'My Profile',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Sora',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 0.0,
            )
          : null,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  wrapWithModel(
                    model: _model.sideNavigationWebModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const SideNavigationWebWidget(),
                  ),
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Container(
                              width: double.infinity,
                              height: 24.0,
                              decoration: const BoxDecoration(),
                            ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: Wrap(
                                spacing: 16.0,
                                runSpacing: 16.0,
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.center,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    constraints: const BoxConstraints(
                                      minWidth: 300.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: FutureBuilder<List<SurveiRow>>(
                                            future: SurveiTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: SpinKitThreeBounce(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2,
                                                      size: 35.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<SurveiRow>
                                                  surveiDropdownSurveiRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .surveiDropdownValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    surveiDropdownSurveiRowList
                                                        .map((e) => e.kdSurvei)
                                                        .toList()
                                                        .unique((e) => e),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                          .surveiDropdownValue =
                                                      val);
                                                  safeSetState(() {
                                                    _model
                                                        .kegDropdownValueController
                                                        ?.reset();
                                                    _model
                                                        .posisiDropdownValueController
                                                        ?.reset();
                                                    _model
                                                        .statusDropdownValueController
                                                        ?.reset();
                                                  });
                                                },
                                                width: double.infinity,
                                                height: 40.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Pilih Survei..',
                                                searchHintText:
                                                    'Pilih Survei..',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: true,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                        if (_model.surveiDropdownValue !=
                                                null &&
                                            _model.surveiDropdownValue != '')
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: FutureBuilder<
                                                List<KegSurveyRow>>(
                                              future:
                                                  KegSurveyTable().queryRows(
                                                queryFn: (q) => q.eq(
                                                  'kd_survei',
                                                  _model.surveiDropdownValue,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 35.0,
                                                      height: 35.0,
                                                      child: SpinKitThreeBounce(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        size: 35.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<KegSurveyRow>
                                                    kegDropdownKegSurveyRowList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .kegDropdownValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options:
                                                      kegDropdownKegSurveyRowList
                                                          .map((e) => e.namaKeg)
                                                          .withoutNulls
                                                          .toList(),
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                            .kegDropdownValue =
                                                        val);
                                                    safeSetState(() {
                                                      _model
                                                          .posisiDropdownValueController
                                                          ?.reset();
                                                      _model
                                                          .statusDropdownValueController
                                                          ?.reset();
                                                    });
                                                  },
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Pilih Kegiatan..',
                                                  searchHintText:
                                                      'Pilih Kegiatan..',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: true,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                        if (_model.kegDropdownValue != null &&
                                            _model.kegDropdownValue != '')
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: FutureBuilder<
                                                List<PosKegSurveyRow>>(
                                              future:
                                                  PosKegSurveyTable().queryRows(
                                                queryFn: (q) => q
                                                    .eq(
                                                      'kd_survei',
                                                      _model
                                                          .surveiDropdownValue,
                                                    )
                                                    .eq(
                                                      'nama_keg',
                                                      _model.kegDropdownValue,
                                                    ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 35.0,
                                                      height: 35.0,
                                                      child: SpinKitThreeBounce(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        size: 35.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<PosKegSurveyRow>
                                                    posisiDropdownPosKegSurveyRowList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .posisiDropdownValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options:
                                                      posisiDropdownPosKegSurveyRowList
                                                          .map((e) => e.namaPos)
                                                          .withoutNulls
                                                          .toList(),
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                            .posisiDropdownValue =
                                                        val);
                                                    safeSetState(() {
                                                      _model
                                                          .statusDropdownValueController
                                                          ?.reset();
                                                    });
                                                  },
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Pilih Posisi..',
                                                  searchHintText:
                                                      'Pilih Posisi..',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: true,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: FlutterFlowDropDown<String>(
                                            multiSelectController: _model
                                                    .statusDropdownValueController ??=
                                                FormListFieldController<
                                                    String>(_model
                                                        .statusDropdownValue ??=
                                                    List<String>.from(
                                              _model.statusListDummy
                                                      .where((e) =>
                                                          e == 'Diterima')
                                                      .toList() ??
                                                  [],
                                            )),
                                            options: _model.statusListDummy,
                                            width: double.infinity,
                                            height: 40.0,
                                            searchHintTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            searchTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Status Penawaran',
                                            searchHintText: 'Status Penawaran',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor: Colors.transparent,
                                            borderWidth: 0.0,
                                            borderRadius: 8.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: true,
                                            isMultiSelect: true,
                                            onMultiSelectChanged: (val) async {
                                              safeSetState(() => _model
                                                  .statusDropdownValue = val);
                                              if (_model.statusDropdownValue !=
                                                      null &&
                                                  (_model.statusDropdownValue)!
                                                      .isNotEmpty) {
                                                _model.historyMitra =
                                                    await History1371ViewTable()
                                                        .queryRows(
                                                  queryFn: (q) => q
                                                      .eq(
                                                        'kd_survei',
                                                        _model
                                                            .surveiDropdownValue,
                                                      )
                                                      .eq(
                                                        'nama_keg',
                                                        _model.kegDropdownValue,
                                                      )
                                                      .eq(
                                                        'nama_pos',
                                                        _model
                                                            .posisiDropdownValue,
                                                      )
                                                      .in_(
                                                        'nama_status',
                                                        _model
                                                            .statusDropdownValue!,
                                                      ),
                                                );
                                                _model.historyMitraList = _model
                                                    .historyMitra!
                                                    .toList()
                                                    .cast<History1371ViewRow>();
                                                safeSetState(() {});
                                              } else {
                                                _model.historyMitraList = [];
                                                safeSetState(() {});
                                              }

                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if ((_model.surveiDropdownValue != null &&
                                              _model.surveiDropdownValue !=
                                                  '') &&
                                          (_model.kegDropdownValue != null &&
                                              _model.kegDropdownValue != '') &&
                                          (_model.posisiDropdownValue != null &&
                                              _model.posisiDropdownValue !=
                                                  '')) {
                                        return wrapWithModel(
                                          model:
                                              _model.dataTableHistoryMitraModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          updateOnChange: true,
                                          child: DataTableHistoryMitraWidget(
                                            historyList:
                                                _model.historyMitraList,
                                          ),
                                        );
                                      } else {
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                'Pilih Survei - Kegiatan - dan Posisi terlebih dahulu',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ].addToEnd(const SizedBox(height: 72.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (true &&
                responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
              wrapWithModel(
                model: _model.navigationMenuModel,
                updateCallback: () => safeSetState(() {}),
                child: const NavigationMenuWidget(),
              ),
          ],
        ),
      ),
    );
  }
}

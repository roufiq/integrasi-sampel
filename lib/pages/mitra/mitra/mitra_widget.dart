import '/backend/supabase/supabase.dart';
import '/components/mitra_detail_modal/mitra_detail_modal_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_search/text_search.dart';
import 'mitra_model.dart';
export 'mitra_model.dart';

class MitraWidget extends StatefulWidget {
  const MitraWidget({super.key});

  @override
  State<MitraWidget> createState() => _MitraWidgetState();
}

class _MitraWidgetState extends State<MitraWidget> {
  late MitraModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MitraModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
            'Data Management',
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
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.min,
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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Survei',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                    FutureBuilder<List<SurveiRow>>(
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
                                              child: SpinKitPulse(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 35.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<SurveiRow>
                                            choiceChipsSurveiSurveiRowList =
                                            snapshot.data!;

                                        return FlutterFlowChoiceChips(
                                          options: _model.statusSurvei
                                              .map((label) => ChipData(label))
                                              .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.choiceChipsSurveiValue =
                                                    val?.firstOrNull);
                                            _model.surveiList =
                                                await SurveiTable().queryRows(
                                              queryFn: (q) => q.eqOrNull(
                                                'status',
                                                _model.choiceChipsSurveiValue,
                                              ),
                                            );
                                            _model.survei = _model.surveiList!
                                                .toList()
                                                .cast<SurveiRow>();
                                            safeSetState(() {});
                                            safeSetState(() {
                                              _model.dropDownKegValueController
                                                  ?.reset();
                                              _model
                                                  .dropDownPosisiValueController
                                                  ?.reset();
                                            });

                                            safeSetState(() {});
                                          },
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily),
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            iconSize: 16.0,
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily),
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            iconSize: 16.0,
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          chipSpacing: 8.0,
                                          rowSpacing: 8.0,
                                          multiselect: false,
                                          initialized:
                                              _model.choiceChipsSurveiValue !=
                                                  null,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsSurveiValueController ??=
                                              FormFieldController<List<String>>(
                                            ['Berjalan'],
                                          ),
                                          wrapped: true,
                                        );
                                      },
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropDownSurveiValueController ??=
                                          FormFieldController<String>(
                                        _model.dropDownSurveiValue ??= '',
                                      ),
                                      options: List<String>.from(_model.survei
                                          .map((e) => e.kdSurvei)
                                          .toList()),
                                      optionLabels: _model.survei
                                          .map((e) => valueOrDefault<String>(
                                                e.nama,
                                                '-',
                                              ))
                                          .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.dropDownSurveiValue = val);
                                        safeSetState(() {
                                          _model.dropDownKegValueController
                                              ?.reset();
                                          _model.dropDownPosisiValueController
                                              ?.reset();
                                        });
                                      },
                                      width: double.infinity,
                                      height: 40.0,
                                      searchHintTextStyle: const TextStyle(),
                                      searchTextStyle: const TextStyle(),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      hintText: 'Pilih Survei..',
                                      searchHintText: 'Pilih Survei..',
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      elevation: 0.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 1.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: true,
                                      isMultiSelect: false,
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kegiatan',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                    FlutterFlowChoiceChips(
                                      options: _model.statusKegiatan
                                          .map((label) => ChipData(label))
                                          .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.choiceChipsKegiatanValue =
                                                val?.firstOrNull);
                                        safeSetState(() =>
                                            _model.requestCompleter = null);
                                        await _model.waitForRequestCompleted();
                                      },
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        iconColor:
                                            FlutterFlowTheme.of(context).info,
                                        iconSize: 16.0,
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 16.0,
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      chipSpacing: 8.0,
                                      rowSpacing: 8.0,
                                      multiselect: false,
                                      initialized:
                                          _model.choiceChipsKegiatanValue !=
                                              null,
                                      alignment: WrapAlignment.start,
                                      controller: _model
                                              .choiceChipsKegiatanValueController ??=
                                          FormFieldController<List<String>>(
                                        ['Berjalan'],
                                      ),
                                      wrapped: true,
                                    ),
                                    FutureBuilder<List<KegSurveyRow>>(
                                      future: (_model.requestCompleter ??=
                                              Completer<List<KegSurveyRow>>()
                                                ..complete(
                                                    KegSurveyTable().queryRows(
                                                  queryFn: (q) => q
                                                      .eqOrNull(
                                                        'kd_survei',
                                                        _model
                                                            .dropDownSurveiValue,
                                                      )
                                                      .eqOrNull(
                                                        'status_keg',
                                                        functions
                                                            .indexOfList(
                                                                _model
                                                                    .statusKegiatan
                                                                    .toList(),
                                                                _model
                                                                    .choiceChipsKegiatanValue!)
                                                            .toString(),
                                                      ),
                                                )))
                                          .future,
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 35.0,
                                              height: 35.0,
                                              child: SpinKitPulse(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 35.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<KegSurveyRow>
                                            dropDownKegKegSurveyRowList =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<int>(
                                          controller: _model
                                                  .dropDownKegValueController ??=
                                              FormFieldController<int>(
                                            _model.dropDownKegValue ??= -1,
                                          ),
                                          options: List<int>.from(
                                              dropDownKegKegSurveyRowList
                                                  .map((e) => e.idKeg)
                                                  .toList()),
                                          optionLabels:
                                              dropDownKegKegSurveyRowList
                                                  .map((e) => e.namaKeg)
                                                  .withoutNulls
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.dropDownKegValue = val);
                                            safeSetState(() {
                                              _model
                                                  .dropDownPosisiValueController
                                                  ?.reset();
                                            });
                                          },
                                          width: double.infinity,
                                          height: 40.0,
                                          searchHintTextStyle: const TextStyle(),
                                          searchTextStyle: const TextStyle(),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          hintText: 'Pilih Kegiatan..',
                                          searchHintText: 'Pilih Kegiatan..',
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Posisi',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                    FutureBuilder<List<PosKegSurveyRow>>(
                                      future: PosKegSurveyTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'kd_survei',
                                              _model.dropDownSurveiValue,
                                            )
                                            .eqOrNull(
                                              'id_keg',
                                              valueOrDefault<int>(
                                                _model.dropDownKegValue,
                                                0,
                                              ),
                                            ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 35.0,
                                              height: 35.0,
                                              child: SpinKitPulse(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 35.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<PosKegSurveyRow>
                                            dropDownPosisiPosKegSurveyRowList =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<int>(
                                          controller: _model
                                                  .dropDownPosisiValueController ??=
                                              FormFieldController<int>(
                                            _model.dropDownPosisiValue ??= -1,
                                          ),
                                          options: List<int>.from(
                                              dropDownPosisiPosKegSurveyRowList
                                                  .map((e) => e.idPos)
                                                  .toList()),
                                          optionLabels:
                                              dropDownPosisiPosKegSurveyRowList
                                                  .map((e) =>
                                                      valueOrDefault<String>(
                                                        e.namaPos,
                                                        '-',
                                                      ))
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownPosisiValue = val);
                                            _model.mitraList =
                                                await History1371ViewTable()
                                                    .queryRows(
                                              queryFn: (q) => q
                                                  .eqOrNull(
                                                    'kd_survei',
                                                    _model.dropDownSurveiValue,
                                                  )
                                                  .eqOrNull(
                                                    'id_keg',
                                                    _model.dropDownKegValue,
                                                  )
                                                  .eqOrNull(
                                                    'id_pos',
                                                    _model.dropDownPosisiValue,
                                                  )
                                                  .inFilterOrNull(
                                                    'nama_status',
                                                    _model
                                                        .dropDownPenawaranValue,
                                                  ),
                                            );
                                            _model.mitra = _model.mitraList!
                                                .toList()
                                                .cast<History1371ViewRow>();
                                            safeSetState(() {});

                                            safeSetState(() {});
                                          },
                                          width: double.infinity,
                                          height: 40.0,
                                          searchHintTextStyle: const TextStyle(),
                                          searchTextStyle: const TextStyle(),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          hintText: 'Pilih Posisi..',
                                          searchHintText: 'Pilih Posisi..',
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Status Penawaran',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                    FlutterFlowDropDown<String>(
                                      multiSelectController: _model
                                              .dropDownPenawaranValueController ??=
                                          FormListFieldController<String>(
                                              _model.dropDownPenawaranValue ??=
                                                  List<String>.from(
                                        _model.statusPenawaran
                                                .take(5)
                                                .toList() ??
                                            [],
                                      )),
                                      options: _model.statusPenawaran,
                                      width: double.infinity,
                                      height: 40.0,
                                      searchHintTextStyle: const TextStyle(),
                                      searchTextStyle: const TextStyle(),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      hintText: 'Status Penawaran..',
                                      searchHintText: 'Status Penawaran..',
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      elevation: 0.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 1.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: true,
                                      isMultiSelect: true,
                                      onMultiSelectChanged: (val) =>
                                          safeSetState(() => _model
                                              .dropDownPenawaranValue = val),
                                    ),
                                  ],
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.characters,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        hintText: 'Search...',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        suffixIcon: const Icon(
                                          Icons.search,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      minLines: 1,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      safeSetState(() {
                                        _model.simpleSearchResults = TextSearch(
                                                _model.mitra
                                                    .map((e) => e.namaLengkap)
                                                    .withoutNulls
                                                    .toList()
                                                    .map((str) => TextSearchItem
                                                        .fromTerms(str, [str]))
                                                    .toList())
                                            .search(_model.textController.text)
                                            .map((r) => r.object)
                                            .toList();
                                      });
                                      _model.searchRes = _model.mitra
                                          .where((e) => _model
                                              .simpleSearchResults
                                              .contains(e.namaLengkap))
                                          .toList()
                                          .cast<History1371ViewRow>();
                                      safeSetState(() {});
                                    },
                                    text: 'Search',
                                    options: FFButtonOptions(
                                      width: 100.0,
                                      height: 50.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 16.0)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: SizedBox(
                                  height: 500.0,
                                  child: Builder(
                                    builder: (context) {
                                      final mitraTable =
                                          (_model.simpleSearchResults.isNotEmpty
                                                  ? _model.searchRes
                                                  : _model.mitra)
                                              .toList();

                                      return FlutterFlowDataTable<
                                          History1371ViewRow>(
                                        controller:
                                            _model.paginatedDataTableController,
                                        data: mitraTable,
                                        columnsBuilder: (onSortChanged) => [
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Nama',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLargeFamily),
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Action',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLargeFamily),
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                        dataRowBuilder: (mitraTableItem,
                                                mitraTableIndex,
                                                selected,
                                                onSelectChanged) =>
                                            DataRow(
                                          color: WidgetStateProperty.all(
                                            mitraTableIndex % 2 == 0
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                          cells: [
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        valueOrDefault<String>(
                                                      functions.formatUppercase(
                                                          mitraTableItem
                                                              .namaLengkap),
                                                      '-',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                mitraTableItem.namaStatus,
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) =>
                                                      FlutterFlowIconButton(
                                                    borderRadius: 30.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    icon: Icon(
                                                      Icons
                                                          .remove_red_eye_sharp,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      size: 24.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      _model.mitras =
                                                          await Mitra1371Table()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'idmitra',
                                                          mitraTableItem
                                                              .idmitra,
                                                        ),
                                                      );
                                                      _model.history =
                                                          await History1371ViewTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'idmitra',
                                                          mitraTableItem
                                                              .idmitra,
                                                        ),
                                                      );
                                                      await showDialog(
                                                        barrierColor:
                                                            const Color(0xA4242121),
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () =>
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus(),
                                                              child:
                                                                  MitraDetailModalWidget(
                                                                mitraDetail:
                                                                    _model
                                                                        .mitras!
                                                                        .first,
                                                                historyDetailId:
                                                                    _model
                                                                        .history!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );

                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  buttonSize: 40.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .warning,
                                                  icon: Icon(
                                                    Icons.monetization_on,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  buttonSize: 40.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary,
                                                  icon: Icon(
                                                    Icons.add_task,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ),
                                              ].divide(const SizedBox(width: 10.0)),
                                            ),
                                          ].map((c) => DataCell(c)).toList(),
                                        ),
                                        paginated: true,
                                        selectable: false,
                                        hidePaginator: false,
                                        showFirstLastButtons: false,
                                        headingRowHeight: 56.0,
                                        dataRowHeight: 48.0,
                                        columnSpacing: 20.0,
                                        headingRowColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        addHorizontalDivider: true,
                                        addTopAndBottomDivider: false,
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
                              ),
                            ].divide(const SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 16.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

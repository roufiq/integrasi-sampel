import '/components/navigation_options/navigation_options_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'navigation_menu_model.dart';
export 'navigation_menu_model.dart';

class NavigationMenuWidget extends StatefulWidget {
  const NavigationMenuWidget({
    super.key,
    int? selectedPageIndex,
  }) : selectedPageIndex = selectedPageIndex ?? 0;

  final int selectedPageIndex;

  @override
  State<NavigationMenuWidget> createState() => _NavigationMenuWidgetState();
}

class _NavigationMenuWidgetState extends State<NavigationMenuWidget>
    with TickerProviderStateMixin {
  late NavigationMenuModel _model;

  var hasContainerTriggered2 = false;
  var hasIconTriggered1 = false;
  var hasIconTriggered2 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigationMenuModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: const Offset(0.0, 458.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 100.0.ms,
            begin: const Offset(0.0, -10.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 0.125,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 125.0.ms,
            duration: 150.0.ms,
            begin: const Offset(0.83, 0.83),
            end: const Offset(1.2, 1.2),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 175.0.ms,
            duration: 150.0.ms,
            begin: const Offset(1.2, 1.2),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-2.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 2.0.ms,
            duration: 200.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(2.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 200.0.ms,
            begin: const Offset(0.7, 0.7),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconButtonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Stack(
        alignment: const AlignmentDirectional(0.0, 1.0),
        children: [
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 500.0,
              maxHeight: 350.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    wrapWithModel(
                      model: _model.historySampelModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NavigationOptionsWidget(
                        title: 'History Sampel Perusahaan',
                        description: 'Informasi Perusahaan dan Riwayat Sampel',
                        icon: const Icon(
                          Icons.business_rounded,
                        ),
                        onTapAction: () async {},
                      ),
                    ),
                    if (false)
                      wrapWithModel(
                        model: _model.alokasiSampelModel,
                        updateCallback: () => safeSetState(() {}),
                        child: NavigationOptionsWidget(
                          title: 'Alokasi Sampel',
                          description: 'Sampel Terpilih Kegiatan Survey',
                          icon: const Icon(
                            Icons.swipe,
                          ),
                          onTapAction: () async {},
                        ),
                      ),
                    wrapWithModel(
                      model: _model.monitoringHonorModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NavigationOptionsWidget(
                        title: 'Monitoring SBML',
                        description:
                            'Memeriksa perkiraan honor mitra sesuai SBML',
                        icon: const Icon(
                          Icons.receipt_long,
                        ),
                        onTapAction: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.historyMitraModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NavigationOptionsWidget(
                        title: 'History Kegiatan Mitra',
                        description: 'Berisi daftar kegiatan Mitra',
                        icon: const Icon(
                          Icons.manage_history_outlined,
                        ),
                        onTapAction: () async {
                          context.pushNamed('HistoryMitraPage');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ).animateOnActionTrigger(
            animationsMap['containerOnActionTriggerAnimation1']!,
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(80.0, 0.0, 80.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Opacity(
                      opacity: widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 56.0,
                                hoverColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.dashboard,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 28.0,
                                ),
                                onPressed: (_model.isOptions == true)
                                    ? null
                                    : () async {
                                        context.goNamed(
                                          'HomePage',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                              ),
                              if (widget.selectedPageIndex == 1)
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ).animateOnActionTrigger(
                        animationsMap['columnOnActionTriggerAnimation1']!,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Transform.rotate(
                            angle: 45.0 * (math.pi / 180),
                            child: Container(
                              width: 38.0,
                              height: 38.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'containerOnActionTriggerAnimation2']!,
                                hasBeenTriggered: hasContainerTriggered2),
                          ),
                        ),
                        Container(
                          width: 38.0,
                          height: 38.0,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 10.0),
                                child: Icon(
                                  Icons.arrow_back,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ).animateOnActionTrigger(
                                    animationsMap[
                                        'iconOnActionTriggerAnimation1']!,
                                    hasBeenTriggered: hasIconTriggered1),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ).animateOnActionTrigger(
                                    animationsMap[
                                        'iconOnActionTriggerAnimation2']!,
                                    hasBeenTriggered: hasIconTriggered2),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 38.0,
                          height: 38.0,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.close_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 28.0,
                            ).animateOnActionTrigger(
                              animationsMap['iconOnActionTriggerAnimation3']!,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (_model.isOptions == true) {
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation2'] !=
                                  null) {
                                animationsMap[
                                        'containerOnActionTriggerAnimation2']!
                                    .controller
                                    .reverse();
                              }
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation1'] !=
                                  null) {
                                animationsMap['iconOnActionTriggerAnimation1']!
                                    .controller
                                    .reverse();
                              }
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation2'] !=
                                  null) {
                                animationsMap['iconOnActionTriggerAnimation2']!
                                    .controller
                                    .reverse();
                              }
                              if (animationsMap[
                                      'columnOnActionTriggerAnimation1'] !=
                                  null) {
                                animationsMap[
                                        'columnOnActionTriggerAnimation1']!
                                    .controller
                                    .reverse();
                              }
                              if (animationsMap[
                                      'columnOnActionTriggerAnimation2'] !=
                                  null) {
                                animationsMap[
                                        'columnOnActionTriggerAnimation2']!
                                    .controller
                                    .reverse();
                              }
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation3'] !=
                                  null) {
                                await animationsMap[
                                        'iconOnActionTriggerAnimation3']!
                                    .controller
                                    .reverse();
                              }
                              _model.isOptions = false;
                              safeSetState(() {});
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation1'] !=
                                  null) {
                                await animationsMap[
                                        'containerOnActionTriggerAnimation1']!
                                    .controller
                                    .reverse();
                              }
                            } else {
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation2'] !=
                                  null) {
                                safeSetState(
                                    () => hasContainerTriggered2 = true);
                                SchedulerBinding.instance.addPostFrameCallback(
                                    (_) async => animationsMap[
                                            'containerOnActionTriggerAnimation2']!
                                        .controller
                                        .forward(from: 0.0));
                              }
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation1'] !=
                                  null) {
                                safeSetState(() => hasIconTriggered1 = true);
                                SchedulerBinding.instance.addPostFrameCallback(
                                    (_) async => animationsMap[
                                            'iconOnActionTriggerAnimation1']!
                                        .controller
                                        .forward(from: 0.0));
                              }
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation2'] !=
                                  null) {
                                safeSetState(() => hasIconTriggered2 = true);
                                SchedulerBinding.instance.addPostFrameCallback(
                                    (_) async => animationsMap[
                                            'iconOnActionTriggerAnimation2']!
                                        .controller
                                        .forward(from: 0.0));
                              }
                              if (animationsMap[
                                      'columnOnActionTriggerAnimation1'] !=
                                  null) {
                                animationsMap[
                                        'columnOnActionTriggerAnimation1']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                              if (animationsMap[
                                      'columnOnActionTriggerAnimation2'] !=
                                  null) {
                                animationsMap[
                                        'columnOnActionTriggerAnimation2']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation3'] !=
                                  null) {
                                await animationsMap[
                                        'iconOnActionTriggerAnimation3']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation1'] !=
                                  null) {
                                await animationsMap[
                                        'containerOnActionTriggerAnimation1']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                              _model.isOptions = true;
                              safeSetState(() {});
                            }
                          },
                          child: Container(
                            width: 38.0,
                            height: 38.0,
                            decoration: const BoxDecoration(),
                          ),
                        ),
                      ],
                    ),
                    Opacity(
                      opacity: widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 56.0,
                                hoverColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.person_3_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 28.0,
                                ),
                                onPressed: (_model.isOptions == true)
                                    ? null
                                    : () async {
                                        context.goNamed(
                                          'TemplateView',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'iconButtonOnActionTriggerAnimation']!,
                              ),
                              if (widget.selectedPageIndex == 2)
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ).animateOnActionTrigger(
                        animationsMap['columnOnActionTriggerAnimation2']!,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

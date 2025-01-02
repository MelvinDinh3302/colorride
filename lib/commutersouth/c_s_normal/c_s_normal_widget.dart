import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'c_s_normal_model.dart';
export 'c_s_normal_model.dart';

class CSNormalWidget extends StatefulWidget {
  const CSNormalWidget({super.key});

  @override
  State<CSNormalWidget> createState() => _CSNormalWidgetState();
}

class _CSNormalWidgetState extends State<CSNormalWidget> {
  late CSNormalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CSNormalModel());

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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFE192),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.pushNamed('HomePage');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: Icon(
            Icons.home,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              GradientText(
                'Commuter South',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 60.0,
                      letterSpacing: 0.0,
                    ),
                colors: [
                  FlutterFlowTheme.of(context).primary,
                  FlutterFlowTheme.of(context).secondary
                ],
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
              ),
              Stack(
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: FlutterFlowExpandedImageView(
                            image: Image.asset(
                              'assets/images/commuter_south.png',
                              fit: BoxFit.contain,
                              alignment: Alignment(0.0, 0.0),
                            ),
                            allowRotation: false,
                            tag: 'imageTag1',
                            useHeroAnimation: true,
                          ),
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'imageTag1',
                      transitionOnUserGestures: true,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/commuter_south.png',
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 239.0,
                          fit: BoxFit.fill,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                    ),
                  ),
                  if (_model.radioButtonValue == 'x0.5' ? true : false)
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.asset(
                                'assets/images/commuter_south-05.png',
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                              allowRotation: false,
                              tag: 'imageTag2',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'imageTag2',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/commuter_south-05.png',
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 239.0,
                            fit: BoxFit.fill,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                    ),
                  if (_model.radioButtonValue == 'x1.5' ? true : false)
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.asset(
                                'assets/images/commuter_south-15.png',
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                              allowRotation: false,
                              tag: 'imageTag3',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'imageTag3',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/commuter_south-15.png',
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 239.0,
                            fit: BoxFit.fill,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                    ),
                  if (_model.radioButtonValue == 'x2.0' ? true : false)
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.asset(
                                'assets/images/commuter_south-2.png',
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                              allowRotation: false,
                              tag: 'imageTag4',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'imageTag4',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/commuter_south-2.png',
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 239.0,
                            fit: BoxFit.fill,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: RatingBar.builder(
                  onRatingUpdate: (newValue) {
                    safeSetState(() => _model.ratingBarValue = newValue);
                    FFAppState().ratingcs = _model.ratingBarValue!;
                  },
                  itemBuilder: (context, index) => Icon(
                    Icons.star_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  direction: Axis.horizontal,
                  initialRating: _model.ratingBarValue ??=
                      FFAppState().ratingcs,
                  unratedColor: FlutterFlowTheme.of(context).accent1,
                  itemCount: 5,
                  itemSize: 24.0,
                  glowColor: FlutterFlowTheme.of(context).primary,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowRadioButton(
                  options: ['x0.5', 'x1.0', 'x1.5', 'x2.0'].toList(),
                  onChanged: (val) => safeSetState(() {}),
                  controller: _model.radioButtonValueController ??=
                      FormFieldController<String>('x1.0'),
                  optionHeight: 36.0,
                  optionWidth: 90.0,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.horizontal,
                  radioButtonColor: FlutterFlowTheme.of(context).primary,
                  inactiveRadioButtonColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  toggleable: false,
                  horizontalAlignment: WrapAlignment.center,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ),
            ].divide(SizedBox(height: 20.0)).addToStart(SizedBox(height: 40.0)),
          ),
        ),
      ),
    );
  }
}
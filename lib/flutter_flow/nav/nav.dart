import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => HomePageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'Normal',
          path: '/normal',
          builder: (context, params) => NormalWidget(),
        ),
        FFRoute(
          name: 'Deuter',
          path: '/deuter',
          builder: (context, params) => DeuterWidget(),
        ),
        FFRoute(
          name: 'Protan',
          path: '/protan',
          builder: (context, params) => ProtanWidget(),
        ),
        FFRoute(
          name: 'Tritan',
          path: '/tritan',
          builder: (context, params) => TritanWidget(),
        ),
        FFRoute(
          name: 'CN-Tritan',
          path: '/cNTritan',
          builder: (context, params) => CNTritanWidget(),
        ),
        FFRoute(
          name: 'CN-Protan',
          path: '/cNProtan',
          builder: (context, params) => CNProtanWidget(),
        ),
        FFRoute(
          name: 'CN-Deuter',
          path: '/cNDeuter',
          builder: (context, params) => CNDeuterWidget(),
        ),
        FFRoute(
          name: 'CN-Normal',
          path: '/cNNormal',
          builder: (context, params) => CNNormalWidget(),
        ),
        FFRoute(
          name: 'CampusTransit',
          path: '/campusTransit',
          builder: (context, params) => CampusTransitWidget(),
        ),
        FFRoute(
          name: 'CS-Deuter',
          path: '/cSDeuter',
          builder: (context, params) => CSDeuterWidget(),
        ),
        FFRoute(
          name: 'CS-Normal',
          path: '/cSNormal',
          builder: (context, params) => CSNormalWidget(),
        ),
        FFRoute(
          name: 'CS-Protan',
          path: '/cSProtan',
          builder: (context, params) => CSProtanWidget(),
        ),
        FFRoute(
          name: 'CS-Tritan',
          path: '/cSTritan',
          builder: (context, params) => CSTritanWidget(),
        ),
        FFRoute(
          name: 'BB-Deuter',
          path: '/bBDeuter',
          builder: (context, params) => BBDeuterWidget(),
        ),
        FFRoute(
          name: 'BB-Normal',
          path: '/bBNormal',
          builder: (context, params) => BBNormalWidget(),
        ),
        FFRoute(
          name: 'BB-Protan',
          path: '/bBProtan',
          builder: (context, params) => BBProtanWidget(),
        ),
        FFRoute(
          name: 'BB-Tritan',
          path: '/bBTritan',
          builder: (context, params) => BBTritanWidget(),
        ),
        FFRoute(
          name: 'NW-Deuter',
          path: '/nWDeuter',
          builder: (context, params) => NWDeuterWidget(),
        ),
        FFRoute(
          name: 'NW-Normal',
          path: '/nWNormal',
          builder: (context, params) => NWNormalWidget(),
        ),
        FFRoute(
          name: 'NW-Protan',
          path: '/nWProtan',
          builder: (context, params) => NWProtanWidget(),
        ),
        FFRoute(
          name: 'NW-Tritan',
          path: '/nWTritan',
          builder: (context, params) => NWTritanWidget(),
        ),
        FFRoute(
          name: 'DD-Deuter',
          path: '/dDDeuter',
          builder: (context, params) => DDDeuterWidget(),
        ),
        FFRoute(
          name: 'DD-Normal',
          path: '/dDNormal',
          builder: (context, params) => DDNormalWidget(),
        ),
        FFRoute(
          name: 'DD-Protan',
          path: '/dDProtan',
          builder: (context, params) => DDProtanWidget(),
        ),
        FFRoute(
          name: 'DD-Tritan',
          path: '/dDTritan',
          builder: (context, params) => DDTritanWidget(),
        ),
        FFRoute(
          name: 'Feedback',
          path: '/feedback',
          builder: (context, params) => FeedbackWidget(),
        ),
        FFRoute(
          name: 'FeedbackThanks',
          path: '/feedbackThanks',
          builder: (context, params) => FeedbackThanksWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}

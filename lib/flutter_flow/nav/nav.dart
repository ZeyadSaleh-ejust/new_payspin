import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

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
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: appStateNotifier.loggedIn ? NavBarPage() : Onboarding012Widget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : Onboarding012Widget(),
        ),
        FFRoute(
          name: Onboarding01Widget.routeName,
          path: Onboarding01Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Onboarding01Widget(),
        ),
        FFRoute(
          name: CreateAccountWidget.routeName,
          path: CreateAccountWidget.routePath,
          builder: (context, params) => CreateAccountWidget(),
        ),
        FFRoute(
          name: CreatetIntakeWidget.routeName,
          path: CreatetIntakeWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CreatetIntakeWidget(),
        ),
        FFRoute(
          name: TestWidget.routeName,
          path: TestWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TestWidget(),
        ),
        FFRoute(
          name: Onboarding02Widget.routeName,
          path: Onboarding02Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Onboarding02Widget(),
        ),
        FFRoute(
          name: Auth2Widget.routeName,
          path: Auth2Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Auth2Widget(),
        ),
        FFRoute(
          name: SuccessWidget.routeName,
          path: SuccessWidget.routePath,
          requireAuth: true,
          builder: (context, params) => SuccessWidget(),
        ),
        FFRoute(
          name: Dashboard5Widget.routeName,
          path: Dashboard5Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Dashboard5Widget(),
        ),
        FFRoute(
          name: Home25BudgetDashboardResponsiveWidget.routeName,
          path: Home25BudgetDashboardResponsiveWidget.routePath,
          requireAuth: true,
          builder: (context, params) => Home25BudgetDashboardResponsiveWidget(),
        ),
        FFRoute(
          name: CircleTemplateWidget.routeName,
          path: CircleTemplateWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CircleTemplateWidget(),
        ),
        FFRoute(
          name: HomeWidget.routeName,
          path: HomeWidget.routePath,
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'Home') : HomeWidget(),
        ),
        FFRoute(
          name: Dashboard6Widget.routeName,
          path: Dashboard6Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Dashboard6Widget(),
        ),
        FFRoute(
          name: Home12ProjectDashboardWidget.routeName,
          path: Home12ProjectDashboardWidget.routePath,
          requireAuth: true,
          builder: (context, params) => Home12ProjectDashboardWidget(),
        ),
        FFRoute(
          name: Profile08Widget.routeName,
          path: Profile08Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Profile08Widget(),
        ),
        FFRoute(
          name: AccountWidget.routeName,
          path: AccountWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AccountWidget(),
        ),
        FFRoute(
          name: PhoneNumberScreenWidget.routeName,
          path: PhoneNumberScreenWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PhoneNumberScreenWidget(),
        ),
        FFRoute(
          name: VeriifyCodeWidget.routeName,
          path: VeriifyCodeWidget.routePath,
          builder: (context, params) => VeriifyCodeWidget(),
        ),
        FFRoute(
          name: FAQsWidget.routeName,
          path: FAQsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => FAQsWidget(),
        ),
        FFRoute(
          name: Step1Widget.routeName,
          path: Step1Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Step1Widget(),
        ),
        FFRoute(
          name: Step2Widget.routeName,
          path: Step2Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Step2Widget(),
        ),
        FFRoute(
          name: Step3Widget.routeName,
          path: Step3Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Step3Widget(),
        ),
        FFRoute(
          name: Step4Widget.routeName,
          path: Step4Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Step4Widget(),
        ),
        FFRoute(
          name: Home25BudgetDashboardResponsiveCopyWidget.routeName,
          path: Home25BudgetDashboardResponsiveCopyWidget.routePath,
          requireAuth: true,
          builder: (context, params) =>
              Home25BudgetDashboardResponsiveCopyWidget(),
        ),
        FFRoute(
          name: Onboarding012Widget.routeName,
          path: Onboarding012Widget.routePath,
          builder: (context, params) => Onboarding012Widget(),
        ),
        FFRoute(
          name: Onboarding022Widget.routeName,
          path: Onboarding022Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Onboarding022Widget(),
        ),
        FFRoute(
          name: Auth1PhoneWidget.routeName,
          path: Auth1PhoneWidget.routePath,
          builder: (context, params) => Auth1PhoneWidget(),
        ),
        FFRoute(
          name: Auth2OTPWidget.routeName,
          path: Auth2OTPWidget.routePath,
          builder: (context, params) => Auth2OTPWidget(
            phonenumber: params.getParam(
              'phonenumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TestingWidget.routeName,
          path: TestingWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TestingWidget(),
        ),
        FFRoute(
          name: Auth3CreateProfileWidget.routeName,
          path: Auth3CreateProfileWidget.routePath,
          builder: (context, params) => Auth3CreateProfileWidget(),
        ),
        FFRoute(
          name: Onboarding013Widget.routeName,
          path: Onboarding013Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Onboarding013Widget(),
        ),
        FFRoute(
          name: Details12SocialPostWidget.routeName,
          path: Details12SocialPostWidget.routePath,
          requireAuth: true,
          builder: (context, params) => Details12SocialPostWidget(),
        ),
        FFRoute(
          name: Home02ListWidget.routeName,
          path: Home02ListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => Home02ListWidget(),
        ),
        FFRoute(
          name: WhatsNewWidget.routeName,
          path: WhatsNewWidget.routePath,
          requireAuth: true,
          builder: (context, params) => WhatsNewWidget(),
        ),
        FFRoute(
          name: Onboarding022onboardingWidget.routeName,
          path: Onboarding022onboardingWidget.routePath,
          requireAuth: true,
          builder: (context, params) => Onboarding022onboardingWidget(),
        ),
        FFRoute(
          name: NotificationsWidget.routeName,
          path: NotificationsWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'notification':
                getDoc(['notifications'], NotificationsRecord.fromSnapshot),
          },
          builder: (context, params) => NotificationsWidget(
            notification: params.getParam(
              'notification',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: EditWidget.routeName,
          path: EditWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EditWidget(),
        ),
        FFRoute(
          name: OnboardingREHAMWidget.routeName,
          path: OnboardingREHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => OnboardingREHAMWidget(),
        ),
        FFRoute(
          name: HomeoldWidget.routeName,
          path: HomeoldWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'noti': getDoc(['notifications'], NotificationsRecord.fromSnapshot),
          },
          builder: (context, params) => HomeoldWidget(
            noti: params.getParam(
              'noti',
              ParamType.Document,
            ),
            turnAndpin: params.getParam(
              'turnAndpin',
              ParamType.DataStruct,
              isList: false,
              structBuilder: RolesStruct.fromSerializableMap,
            ),
            circleId: params.getParam(
              'circleId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PayspinOldWidget.routeName,
          path: PayspinOldWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'noti': getDoc(['notifications'], NotificationsRecord.fromSnapshot),
          },
          builder: (context, params) => PayspinOldWidget(
            noti: params.getParam(
              'noti',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: Auth1PhoneNEWWidget.routeName,
          path: Auth1PhoneNEWWidget.routePath,
          builder: (context, params) => Auth1PhoneNEWWidget(),
        ),
        FFRoute(
          name: Auth2OTPNEWWidget.routeName,
          path: Auth2OTPNEWWidget.routePath,
          builder: (context, params) => Auth2OTPNEWWidget(
            phonenumber: params.getParam(
              'phonenumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: NotificationsREHAMWidget.routeName,
          path: NotificationsREHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => NotificationsREHAMWidget(),
        ),
        FFRoute(
          name: NONotificationsREHAMWidget.routeName,
          path: NONotificationsREHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => NONotificationsREHAMWidget(),
        ),
        FFRoute(
          name: CreateORJoinREHAMWidget.routeName,
          path: CreateORJoinREHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CreateORJoinREHAMWidget(),
        ),
        FFRoute(
          name: Create1REHAMWidget.routeName,
          path: Create1REHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => Create1REHAMWidget(),
        ),
        FFRoute(
          name: Create3REHAMWidget.routeName,
          path: Create3REHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => Create3REHAMWidget(),
        ),
        FFRoute(
          name: Create2REHAMWidget.routeName,
          path: Create2REHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => Create2REHAMWidget(),
        ),
        FFRoute(
          name: Create4REHAMWidget.routeName,
          path: Create4REHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => Create4REHAMWidget(),
        ),
        FFRoute(
          name: Join1REHAMWidget.routeName,
          path: Join1REHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => Join1REHAMWidget(),
        ),
        FFRoute(
          name: Join2REHAMWidget.routeName,
          path: Join2REHAMWidget.routePath,
          requireAuth: true,
          asyncParams: {
            'circleReference': getDoc(['circles'], CirclesRecord.fromSnapshot),
          },
          builder: (context, params) => Join2REHAMWidget(
            circleReference: params.getParam(
              'circleReference',
              ParamType.Document,
            ),
            myTurn: params.getParam(
              'myTurn',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: List23ActivityResponsiveWidget.routeName,
          path: List23ActivityResponsiveWidget.routePath,
          requireAuth: true,
          builder: (context, params) => List23ActivityResponsiveWidget(),
        ),
        FFRoute(
          name: PayspinREHAMWidget.routeName,
          path: PayspinREHAMWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'PayspinREHAM')
              : PayspinREHAMWidget(),
        ),
        FFRoute(
          name: AccountREHAMWidget.routeName,
          path: AccountREHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'AccountREHAM')
              : AccountREHAMWidget(),
        ),
        FFRoute(
          name: SignUpWidget.routeName,
          path: SignUpWidget.routePath,
          builder: (context, params) => SignUpWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          requireAuth: true,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: NewsREHAMWidget.routeName,
          path: NewsREHAMWidget.routePath,
          requireAuth: true,
          builder: (context, params) => NewsREHAMWidget(),
        ),
        FFRoute(
          name: PaymentPageWidget.routeName,
          path: PaymentPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PaymentPageWidget(),
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
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

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

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
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
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
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
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
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
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onboarding012';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Splash_2@2x.png',
                    fit: BoxFit.cover,
                  ),
                )
              : PushNotificationsHandler(child: page);

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

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    Key? key,
    required this.state,
    required this.child,
  }) : super(key: key);

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();

    // Handle erroneous links from Firebase Dynamic Links.

    String? location;

    /*
    Handle `links` routes that have dynamic-link entangled with deep-link 
    */
    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.queryParameters.containsKey('deep_link_id')) {
      final deepLinkId = widget.state.uri.queryParameters['deep_link_id'];
      if (deepLinkId != null) {
        final deepLinkUri = Uri.parse(deepLinkId);
        final link = deepLinkUri.toString();
        final host = deepLinkUri.host;
        location = link.split(host).last;
      }
    }

    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.toString().contains('request_ip_version')) {
      location = '/';
    }

    if (location != null) {
      SchedulerBinding.instance
          .addPostFrameCallback((_) => context.go(location!));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
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

import 'dart:async';

import 'package:recipe_app/core/route/app_route_redirect.dart';
import 'package:recipe_app/core/route/app_route_name.dart';
import 'package:recipe_app/module/auth/presentation/pages/login/login_page.dart';
import 'package:recipe_app/module/auth/presentation/pages/register/register_page.dart';
import 'package:recipe_app/module/dashboard/dashboard_page.dart';
import 'package:recipe_app/module/event/presentation/pages/event/event_page.dart';
import 'package:recipe_app/module/home/presentation/pages/home/home_page.dart';
import 'package:recipe_app/module/profile/presentation/pages/profile/profile_page.dart';
import 'package:recipe_app/module/splash/presentation/pages/splash/splash_page.dart';
import 'package:recipe_app/module/sponsor/presentation/pages/sponsor/sponsor_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final Completer<void> rootNavigatorCompleter = Completer<void>();
final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final bottomNavigatorKey = GlobalKey<StatefulNavigationShellState>(
  debugLabel: 'bottom',
);

class AppRoute {
  AppRoute._();

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    initialLocation: "/",
    routes: [
      // default path is to /home
      GoRoute(path: "/", redirect: (context, state) => "/splash"),
      GoRoute(
        path: "/splash",
        name: AppRouteName.splash,
        builder: (context, state) {
          return SplashPage();
        },
      ),
      GoRoute(
        path: "/onboarding",
        name: AppRouteName.onBoarding,
        builder: (context, state) {
          return SizedBox();
        },
      ),
      GoRoute(
        path: "/auth",
        name: AppRouteName.login,
        redirect: AppRouteRedirect.needNoAuth,
        builder: (context, state) {
          return LoginPage();
        },
        routes: [
          GoRoute(
            path: "register",
            name: AppRouteName.register,
            builder: (context, state) {
              return RegisterPage();
            },
          ),
        ],
      ),
      StatefulShellRoute.indexedStack(
        key: bottomNavigatorKey,
        builder: (context, state, child) {
          return DashboardPage(state: state, child: child);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/home",
                name: AppRouteName.home,
                builder: (context, state) {
                  return HomePage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/event",
                name: AppRouteName.event,
                builder: (context, state) {
                  return EventPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/sponsor",
                name: AppRouteName.sponsor,
                builder: (context, state) {
                  return SponsorPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/profile",
                name: AppRouteName.profile,
                redirect: AppRouteRedirect.needAuth,
                builder: (context, state) {
                  return ProfilePage();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

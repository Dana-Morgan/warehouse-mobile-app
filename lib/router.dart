import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:stockify/view/screens/authentication/login.dart';
import 'package:stockify/view/screens/buildings/add_building_page.dart';
import 'package:stockify/view/screens/buildings/my_buildings_page.dart';
import 'package:stockify/view/screens/splash_page.dart';

class ScreenPaths {
  static const splash = '/';
  static const myBuildings = "/my-buildings";
  static const buildingDetails = "/building-details";
  static const addBuilding = "/add-building";
  static const addWarehouse = "/add-warehouse";
  static const monthlyBillingEntry = "/monthly-billing-entry";
  static const claimPreview = "/claim-preview";
  static const billingSettings = "/billing-settings";
  static const billingHistory = "/billing-history";
  static const login = "/login";
}

final appRouter = GoRouter(
  routes: [

    GoRoute(
      path: ScreenPaths.myBuildings,
      builder: (BuildContext context, GoRouterState state) {
        // return MyBuildingsPage();
        return MyBuildingsPage();
      },
    ),
    GoRoute(
      path: ScreenPaths.buildingDetails,
      builder: (BuildContext context, GoRouterState state) {
        return SplashPage();
      },
    ),
    GoRoute(
      path: ScreenPaths.monthlyBillingEntry,
      builder: (BuildContext context, GoRouterState state) {
        return SplashPage();
      },
    ),
    GoRoute(
      path: ScreenPaths.claimPreview,
      builder: (BuildContext context, GoRouterState state) {
        return SplashPage();
      },
    ),
    GoRoute(
      path: ScreenPaths.billingSettings,
      builder: (BuildContext context, GoRouterState state) {
        return SplashPage();
      },
    ),
    GoRoute(
      path: ScreenPaths.billingHistory,
      builder: (BuildContext context, GoRouterState state) {
        return SplashPage();
      },
    ),
    GoRoute(
      path: ScreenPaths.addWarehouse,
      builder: (BuildContext context, GoRouterState state) {
        return SplashPage();
      },
    ),
    GoRoute(
      path: ScreenPaths.addBuilding,
      builder: (BuildContext context, GoRouterState state) {
        return AddBuildingPage();
      },
    ),
    GoRoute(
      path: ScreenPaths.splash,
      builder: (BuildContext context, GoRouterState state) {
        return SplashPage();
      },
    ),
    GoRoute(
      path: ScreenPaths.login,
      builder: (BuildContext context, GoRouterState state) {
        return Login();
      },
    ),
  ],
);

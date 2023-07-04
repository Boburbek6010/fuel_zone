import 'package:flutter/material.dart';
import 'package:fuel_zone/src/features/main/presentation/pages/home_page.dart';
import 'package:fuel_zone/src/features/main/presentation/pages/main_page.dart';

import 'app_route_names.dart';

@immutable
class AppRoutes {
  const AppRoutes._();
  static final Map<String, Widget Function(BuildContext)> routes = {
    AppRouteNames.MAIN: (context) => const MainPage(),
    AppRouteNames.HOME: (context) => const HomePage(),
  };
}

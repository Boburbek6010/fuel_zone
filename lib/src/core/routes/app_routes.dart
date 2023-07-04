import 'package:flutter/material.dart';
import 'package:fuel_zone/src/features/main/main_page.dart';

import '../../features/main/presentation/home/page/home_page.dart';
import 'app_route_names.dart';

@immutable
class AppRoutes {
  const AppRoutes._();
  static final Map<String, Widget Function(BuildContext)> routes = {
    AppRouteNames.MAIN: (context) => const MainPage(),
    AppRouteNames.HOME: (context) => const HomePage(),
  };
}

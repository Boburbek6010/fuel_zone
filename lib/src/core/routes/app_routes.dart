import 'package:flutter/material.dart';
import 'package:fuel_zone/src/features/main/main_page.dart';
import 'package:fuel_zone/src/features/main/presentation/map/page/map_page.dart';
import 'package:fuel_zone/src/features/main/presentation/profile/page/profile_page.dart';

import '../../features/main/presentation/home/page/home_page.dart';
import 'app_route_names.dart';

@immutable
class AppRoutes {
  const AppRoutes._();
  static final Map<String, Widget Function(BuildContext)> routes = {
    AppRouteNames.MAIN: (context) =>  MainPage(),
    AppRouteNames.HOME: (context) => const HomePage(),
    AppRouteNames.MAP: (context) => const MapPage(),
    AppRouteNames.PROFILE: (context) => const ProfilePage(),
  };//
}

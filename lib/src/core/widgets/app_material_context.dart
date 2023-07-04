import 'package:flutter/material.dart';

import '../routes/app_route_names.dart';
import '../routes/app_routes.dart';


class AppMaterialContext extends StatefulWidget {
  const AppMaterialContext({Key? key}) : super(key: key);

  @override
  State<AppMaterialContext> createState() => _AppMaterialContextState();
}

class _AppMaterialContextState extends State<AppMaterialContext> {

  @override
  Widget build(BuildContext context) => MaterialApp(
    // locale: context.locale,
    // supportedLocales: context.supportedLocales,
    // localizationsDelegates: context.localizationDelegates,
    debugShowCheckedModeBanner: false,
    title: 'Fuel Zone',
    theme: ThemeData(
      // Xurshidjon commentdan pastdagini oching
      // scaffoldBackgroundColor: AppColors.white,
      primarySwatch: Colors.blue,
    ),
    // initialRoute: token != null && token!.isNotEmpty ? AppRouteNames.MAIN : AppRouteNames.SPLASH,
    initialRoute: AppRouteNames.MAIN,
    routes: AppRoutes.routes,
  );
}


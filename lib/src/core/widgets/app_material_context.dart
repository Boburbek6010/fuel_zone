import 'package:flutter/material.dart';

import '../routes/app_route_names.dart';
import '../routes/app_routes.dart';
import '../styles/colors.dart';


class AppMaterialContext extends StatefulWidget {
  const AppMaterialContext({Key? key}) : super(key: key);

  @override
  State<AppMaterialContext> createState() => _AppMaterialContextState();
}

class _AppMaterialContextState extends State<AppMaterialContext> {

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Fuel Zone',
    theme: ThemeData(
      scaffoldBackgroundColor: AppColors.cEFEFEF,
      primarySwatch: Colors.blue,
    ),
    initialRoute: AppRouteNames.MAIN,
    routes: AppRoutes.routes,
  );
}


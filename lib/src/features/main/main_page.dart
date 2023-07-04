
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fuel_zone/src/features/main/presentation/map/page/map_page.dart';
import 'package:fuel_zone/src/features/main/presentation/payment/page/payment_page.dart';
import 'package:fuel_zone/src/features/main/presentation/profile/page/profile_page.dart';

import '../../core/styles/colors.dart';
import 'main_vm.dart';
import 'presentation/home/page/home_page.dart';

class MainPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(mainProvider);

    const pages = <Widget>[
      HomePage(),
      MapPage(),
      PaymentPage(),
      ProfilePage()
    ];

    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: ref.read(mainProvider).pageController,
        onPageChanged: ref.read(mainProvider).changePageIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(


        backgroundColor: AppColors.transparent,

        onTap: ref.read(mainProvider).changePageIndex,
        currentIndex: ref.read(mainProvider).pageIndex,
        items:  [

        ],
      ),
    );
  }
}

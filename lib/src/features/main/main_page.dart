
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fuel_zone/src/core/styles/images.dart';
import 'package:fuel_zone/src/features/app.dart';
import 'package:fuel_zone/src/features/main/presentation/map/page/map_page.dart';
import 'package:fuel_zone/src/features/main/presentation/payment/page/payment_page.dart';
import 'package:fuel_zone/src/features/main/presentation/profile/page/profile_page.dart';

import '../../core/styles/colors.dart';
import 'main_vm.dart';
import 'presentation/home/page/home_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

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
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: ref.read(mainProvider).pageController,
        onPageChanged: ref.read(mainProvider).changePageIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(


        backgroundColor: AppColors.c545454,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.black,


        onTap: ref.read(mainProvider).changePageIndex,
        currentIndex: ref.read(mainProvider).pageIndex,
        items:  [

            BottomNavigationBarItem(
                icon: AppImages.barSearch2,
                label: '',
                activeIcon: Container(
                  padding: const EdgeInsets.all(10),
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.cFF5934,
                  ),
                  child: AppImages.barSearch,
                ),
            ),
            BottomNavigationBarItem(
                icon: AppImages.barMap,
                label: '',
              activeIcon: Container(
                padding: const EdgeInsets.all(10),
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.cFF5934,
                ),
                child: AppImages.barMap2,
              ),
            ),

          BottomNavigationBarItem(
              icon: AppImages.barScan,
              label: '',
            activeIcon: Container(
              padding: const EdgeInsets.all(10),
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.cFF5934,
              ),
              child: AppImages.barScan2,
            ),
          ),

          BottomNavigationBarItem(
              icon: AppImages.barUser,
              label: '',
            activeIcon: Container(
              padding: const EdgeInsets.all(10),
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.cFF5934,
              ),
              child: AppImages.barUser2,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fuel_zone/src/core/styles/colors.dart';
import 'package:fuel_zone/src/core/styles/images.dart';
import 'package:fuel_zone/src/data/oil_station_model.dart';
import 'package:fuel_zone/src/features/main/presentation/home/controller/home_controller.dart';
import '../../../main_vm.dart';
import '../widget/fuel_item.dart';


class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  @override
  void initState() {
    Future.delayed(Duration.zero).then((value){
      ref.read(homeVM).getAllCategories();
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    ref.watch(homeVM).getAllCategories;
    return Scaffold(
      backgroundColor: AppColors.cEFEFEF,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.white
                  ),
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(15),
                        child: AppImages.search,
                      ),
                      hintText: 'Search',
                      hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 28,
                          width: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white,
                          ),
                          child: const Text('Best price', style: TextStyle(color: AppColors.c46515E, fontWeight: FontWeight.w500, fontSize: 12),),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          alignment: Alignment.center,
                          height: 28,
                          width: 39,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white,
                          ),
                          child: const Text('Near', style: TextStyle(color: AppColors.c46515E, fontWeight: FontWeight.w500, fontSize: 12),),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          alignment: Alignment.center,
                          height: 28,
                          width: 53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white,
                          ),
                          child: const Text('History', style: TextStyle(color: AppColors.c46515E, fontWeight: FontWeight.w500, fontSize: 12),),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          alignment: Alignment.center,
                          height: 28,
                          width: 53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white,
                          ),
                          child: const Text('Lukoil', style: TextStyle(color: AppColors.c46515E, fontWeight: FontWeight.w500, fontSize: 12),),
                        ),
                      ],
                    ),
                    AppImages.columnIcon,
                  ],
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),

      body: ListView.builder(
          itemCount: ref.read(homeVM).oilList.length,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemBuilder: (context, index){
            OilStation oil = ref.read(homeVM).oilList[index];
            return  FuelItem(
              oilStation: oil.stationName,
              address: oil.address,
              time: oil.time,
              openOrClose: oil.openOrClose,
              go: () {
                ref.read(mainProvider).changePageIndex(1);
              },
              image: oil.id.isOdd  ? AppImages.zone1 :  AppImages.zone2,
              onPressed: () {
                ref.read(mainProvider).changePageIndex(1);
              },
            );
          }
      ),
    );
  }

}




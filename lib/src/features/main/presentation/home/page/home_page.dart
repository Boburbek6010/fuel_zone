import 'package:flutter/material.dart';
import 'package:fuel_zone/src/core/styles/colors.dart';
import 'package:fuel_zone/src/core/styles/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cEFEFEF,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
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
              ],
            ),
          ),
        ),
      ),

      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index){
            return Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white
              ),
              child: Column(
                children: [
                  Expanded(
                    child: AppImages.zone1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           const Text('Lukoil station', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                           Row(
                             children: [
                               AppImages.star,
                               const Text('4,5', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),

                             ],
                           )
                          ],
                        ),
                        const Row(
                          children:  [
                            Icon(
                                Icons.location_on_outlined,
                                color: AppColors.c888888,
                                size: 15,
                            ),
                             Text(' 183 st. Seul, Tashkent, Uzbekistan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.c888888,),),
                          ],
                        ),
                        Row(
                          children: [
                            AppImages.carIcon,
                            const SizedBox(width: 5),
                            const Text('15 min', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black,),),
                            const SizedBox(width: 15),
                            const Text('Open', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.c6CE641,),),

                            AppImages.call,
                            ElevatedButton(
                                onPressed: (){},
                                child: const Text('Go!', style: TextStyle(color: AppColors.white, fontSize: 15),)
                            )

                          ],

                        )

                      ],
                    ),
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}

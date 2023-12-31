import 'package:flutter/material.dart';
import '../../../../../core/styles/colors.dart';
import '../../../../../core/styles/images.dart';

class FuelItem extends StatelessWidget {
  final String oilStation;
  final VoidCallback onPressed;
  final String address;
  final String time;
  final String openOrClose;
  final Image image;
  const FuelItem({super.key, required this.onPressed, required this.oilStation, required this.address, required this.time, required this.openOrClose, required this.image});


  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: 185,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        splashColor: AppColors.black.withOpacity(0.4),
        onPressed: onPressed,
        child: Column(
          children: [
            Expanded(
              child: image,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(oilStation, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        Row(
                          children: [
                            AppImages.star,
                            const Text('4,5', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                          ],
                        )
                      ],
                    ),
                     Row(
                      children:  [
                        const Icon(
                          Icons.location_on_outlined,
                          color: AppColors.c888888,
                          size: 15,
                        ),
                        Text(address, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.c888888,),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AppImages.carIcon,
                            const SizedBox(width: 5),
                             Text(time, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black,),),
                            const SizedBox(width: 15),
                             Text(openOrClose, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.c6CE641,),),
                          ],

                        ),
                        Row(
                          children: [
                            AppImages.call,
                            const SizedBox(width: 5),
                            ElevatedButton(
                                onPressed: onPressed,
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(39, 24),
                                    backgroundColor: AppColors.cFF5722
                                ),
                                child: const Text('Go!', style: TextStyle(color: AppColors.white, fontSize: 15),)
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

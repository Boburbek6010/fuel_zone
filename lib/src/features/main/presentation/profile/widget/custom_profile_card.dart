import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fuel_zone/src/core/styles/colors.dart';
import 'package:fuel_zone/src/core/styles/images.dart';

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColors.cFF5722,
        elevation: 7,
        child: Row(
          children: [
            const SizedBox(width: 15),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: Center(child: AppImages.profileProfile),
            ),
            const SizedBox(width: 10),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fuel zone", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white
                ),),
                Text("@fuelzone2023", style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                    color: AppColors.white
                ),),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: (){}, icon: AppImages.profileEdit),
            const SizedBox(width: 20),
          ],
        )
    )
    );
  }
}

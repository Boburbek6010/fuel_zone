import 'package:flutter/material.dart';
import 'package:fuel_zone/src/core/styles/images.dart';
import 'package:fuel_zone/src/features/main/presentation/profile/widget/custom_container.dart';
import 'package:fuel_zone/src/features/main/presentation/profile/widget/eachOfThem.dart';

import '../widget/custom_profile_card.dart';
import '../widget/every_items.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 60,),
            const CustomProfileCard(),
            const SizedBox(height: 30,),
            CustomContainer(
              items: Column(
                children: [
                 EachOfThem(
                   image: AppImages.profileAccount,
                   text: "My Account",
                 ),
                  EachOfThem(
                    image: AppImages.profileHistoryData,
                    text: "History Data",
                  ),
                  EachOfThem(
                    image: AppImages.profileCheck,
                    text: "Payment Methods",
                  ),
                  EachOfThem(
                    image: AppImages.profileGift,
                    text: "My Bonuses",
                  ),
                  EachOfThem(
                    image: AppImages.profileLogOut,
                    text: "Log out",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            CustomContainer(
              items: Column(
                children: [
                  EachOfThem(
                    image: AppImages.profileNotification,
                    text: "Help & Support",
                  ),
                  EachOfThem(
                    image: AppImages.profileSaved,
                    text: "Saved Locations",
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

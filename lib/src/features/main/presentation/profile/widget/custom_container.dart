import 'package:flutter/cupertino.dart';
import 'package:fuel_zone/src/core/styles/colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget items;
  const CustomContainer({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: items,
    );
  }
}

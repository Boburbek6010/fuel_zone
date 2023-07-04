import 'package:flutter/material.dart';
import 'package:fuel_zone/src/core/styles/images.dart';

import '../../../../../core/styles/colors.dart';

class SendWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const SendWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 30),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.cFF5722,
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: onPressed,
          child: AppImages.sendMap),
    );
  }
}

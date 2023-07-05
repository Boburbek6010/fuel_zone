import 'package:flutter/material.dart';
import 'package:fuel_zone/src/core/styles/colors.dart';

import 'every_items.dart';

class EachOfThem extends StatelessWidget {
  final Widget image;
  final String text;
  const EachOfThem({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          EveryItems(
            child: image,
          ),
          const SizedBox(width: 15),
          Text(text, style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_outlined, size: 17, color: AppColors.cABABAB,),
        ],
      ),
    );
  }
}

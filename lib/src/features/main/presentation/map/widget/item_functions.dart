import 'package:flutter/material.dart';
import 'package:fuel_zone/src/core/styles/images.dart';

import '../../../../../core/styles/colors.dart';

class ItemFunction extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final Widget image;
  const ItemFunction({super.key, required this.onPressed, required this.color, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: onPressed,
          child: image,
      ),
    );
  }
}

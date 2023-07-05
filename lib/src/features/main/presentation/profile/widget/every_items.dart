import 'package:flutter/cupertino.dart';
import 'package:fuel_zone/src/core/styles/colors.dart';

class EveryItems extends StatelessWidget {
  final Widget child;
  const EveryItems({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cFEF5F5,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 40,
      width: 40,
      child: Center(
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/styles/colors.dart';

class PaymentCard extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String cardName;
  final String cardNumber;
  const PaymentCard({super.key, required this.color,required this.textColor, required this.cardName, required this.cardNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 300,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.only(left: 15, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(cardName, style:  TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w600),),
              Container(
                height: 12,
                width: 12,
                decoration: const  BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.c6CE641
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(cardNumber, style: const TextStyle(color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w600),),
              const SizedBox(width: 60),
              const Text('26/06', style:  TextStyle(color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w500),)
            ],
          )
        ],
      ),
    );
  }
}

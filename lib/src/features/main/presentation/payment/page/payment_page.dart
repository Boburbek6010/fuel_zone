import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fuel_zone/src/core/styles/colors.dart';
import 'package:fuel_zone/src/core/styles/images.dart';
import 'package:fuel_zone/src/features/main/presentation/payment/controller/payment_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widget/card.dart';

class PaymentPage extends ConsumerWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 4,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AppImages.qrScanner,
                    const Divider(
                      thickness: 2,
                      color: AppColors.black,
                      endIndent: 50,
                      indent: 50,
                    )
                  ],
                )
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 65),
                      child: Text('Choose card', textAlign: TextAlign.start, style: TextStyle(color: AppColors.c46515E, fontWeight: FontWeight.w500, fontSize: 16),),
                    ),

                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        controller: ref.read<PaymentVM>(paymentVM).pageController,
                        children: const [
                          PaymentCard(
                            color: AppColors.c0E17EC,
                            cardName: 'OFB',
                            cardNumber: '8600 5704 ********',
                            textColor: AppColors.cFFD452,
                          ),
                          PaymentCard(
                            color: AppColors.cFF5722,
                            cardName: 'Fuel zone card',
                            cardNumber: '9002 5404 *****',
                            textColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: SmoothPageIndicator(
                        controller: ref.read(paymentVM).pageController,
                        count: 2,
                        effect:  const ScrollingDotsEffect(
                          dotColor: AppColors.cABABAB,
                          activeDotColor: AppColors.c0E17EC,
                          activeStrokeWidth: 2.6,
                          activeDotScale: 1.3,
                          maxVisibleDots: 5,
                          radius: 8,
                          spacing: 5,
                          dotHeight: 6,
                          dotWidth: 6,
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}





import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final paymentVM = ChangeNotifierProvider((ref) => PaymentVM());

class PaymentVM extends ChangeNotifier {

  PageController pageController = PageController(viewportFraction: 0.75);

}
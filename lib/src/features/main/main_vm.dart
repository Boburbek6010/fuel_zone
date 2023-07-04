

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainVM());

class MainVM extends ChangeNotifier {
  final pageController = PageController();
   int pageIndex = 0;


  void changePageIndex(int index) {
    pageIndex = index;
    pageController.jumpToPage(pageIndex);
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

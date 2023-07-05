

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../data/mock_data.dart';
import '../../../../../data/oil_station_model.dart';


final homeVM = ChangeNotifierProvider((ref) => HomeVM());

int globalIndex = 0;

class HomeVM extends ChangeNotifier {

  List<OilStation> oilList = [];


  void getAllCategories() {
    oilList = categoriesMock.map((item) => OilStation.fromJson(item)).toList();
    notifyListeners();
  }

  void giveIndex(int myIndex){
    globalIndex = myIndex;
    log("Global index is ======>>> $globalIndex");
    notifyListeners();
  }



}
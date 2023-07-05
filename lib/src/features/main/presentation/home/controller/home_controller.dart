

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../data/mock_data.dart';
import '../../../../../data/oil_station_model.dart';


final homeVM = ChangeNotifierProvider((ref) => HomeVM());

class HomeVM extends ChangeNotifier {

  List<OilStation> oilList = [];


  void getAllCategories() {
    oilList = categoriesMock.map((item) => OilStation.fromJson(item)).toList();
    notifyListeners();
  }



}
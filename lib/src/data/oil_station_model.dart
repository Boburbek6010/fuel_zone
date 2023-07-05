class OilStation {

  late int id;
  late String stationName;
  late String address;
  late String time;
  late String openOrClose;
  late String locationNumber1;
  late String locationNumber2;

  OilStation({
    required this.id,
    required this.stationName,
    required this.address,
    required this.time,
    required this.openOrClose,
    required this.locationNumber1,
    required this.locationNumber2,

  });

  OilStation.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    stationName = json["stationName"];
    address = json["address"];
    time = json["time"];
    openOrClose = json["openOrClose"];
    locationNumber1 = json["locationNumber1"];
    locationNumber2 = json["locationNumber2"];
  }




}
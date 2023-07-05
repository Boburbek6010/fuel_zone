import 'dart:async';
import 'dart:developer';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fuel_zone/src/data/oil_station_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../data/mock_data.dart';

final mapController = ChangeNotifierProvider((ref) => MapController());

class MapController extends ChangeNotifier {
  late bool serviceEnabled;
  late LocationPermission permission;
  Position? currentLocation;
  double zoom = 15.0;
  Set<Marker> markers = {};
  bool isLoading = false;
  GoogleMapController? googleMapController;
  final Completer<GoogleMapController> mapController =
      Completer<GoogleMapController>();

  List<OilStation> list = [];

  void getAllData() {
    list = categoriesMock.map((item) => OilStation.fromJson(item)).toList();
    notifyListeners();
  }

  Future<dynamic> getCurrentLocation() async {
    log('get current location');

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      log('service not enabled');
      return Future.error('Location service is disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      log('service denied');
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error('Location permission is denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permission denied forever, we can\'t request anymore');
    }

    currentLocation = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    log(currentLocation.toString());
    notifyListeners();
  }

  void _addLocationMarker() {
    if (currentLocation != null) {
      Marker marker = Marker(
        markerId: const MarkerId('userLocation'),
        position: LatLng(currentLocation!.latitude, currentLocation!.longitude),
        infoWindow: const InfoWindow(title: 'User Location'),
      );
      markers.add(marker);
    }
  }

  Future<void> init() async {
    getAllData();
    getCurrentLocation().then((value) async {
      _addLocationMarker();
      for (int i = 0; i < list.length; i++) {
        markers.add(
          Marker(
            markerId: MarkerId('marker${list[i].id.toString()}'),
            position: LatLng(list[i].locationNumber1, list[i].locationNumber2),
            infoWindow: InfoWindow(title: list[i].stationName),
            icon: BitmapDescriptor.fromBytes(
              await getBytesFromAsset(list[i].image, 140),
            ),
          ),
        );
        notifyListeners();
      }
      isLoading = true;
      notifyListeners();
    });
    notifyListeners();
  }

  MapController() {
    init();
  }

  void resetZoom() {
    if (googleMapController != null) {
      googleMapController!.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(
              currentLocation!.latitude,
              currentLocation!.longitude,
            ),
            zoom: 17,
          ),
        ),
      );
      notifyListeners();
    }
  }

  void zoomIn() {
    googleMapController!.animateCamera(CameraUpdate.zoomIn());
  }

  void zoomOut() {
    googleMapController!.animateCamera(CameraUpdate.zoomOut());
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}

import 'dart:async';
import 'dart:developer';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final mapController = ChangeNotifierProvider((ref) => MapController());

class MapController extends ChangeNotifier {
  late bool serviceEnabled;
  late LocationPermission permission;
  Position? currentLocation;
  double zoom = 15.0;
  Set<Marker> markers = {};
  bool isLoading = false;
  GoogleMapController? googleMapController;
  final Completer<GoogleMapController> mapController = Completer<GoogleMapController>();


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
    log("message4444");
    getCurrentLocation().then((value) async {
      log("message555");
      _addLocationMarker();
      markers.add(
        Marker(
          markerId: const MarkerId('marker1'),
          position: const LatLng(41.312786, 69.527668),
          infoWindow: const InfoWindow(title: 'Gas Station 1'),
          icon: BitmapDescriptor.fromBytes(
            await getBytesFromAsset('assets/images/location_1.png', 140),
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: const MarkerId('marker2'),
          position: const LatLng(41.313374, 69.529284),
          infoWindow: const InfoWindow(title: 'Gas Station 2'),
          icon: BitmapDescriptor.fromBytes(
            await getBytesFromAsset('assets/images/locatin_2.png', 140),
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: const MarkerId('marker3'),
          position: const LatLng(41.311020, 69.535245),
          infoWindow: const InfoWindow(title: 'Gas Station 3'),
          icon: BitmapDescriptor.fromBytes(
            await getBytesFromAsset('assets/images/location_1.png', 140),
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: const MarkerId('marker4'),
          position: const LatLng(41.311152, 69.528560),
          infoWindow: const InfoWindow(title: 'Gas Station 4'),
          icon: BitmapDescriptor.fromBytes(
            await getBytesFromAsset('assets/images/locatin_2.png', 140),
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: const MarkerId('marker5'),
          position: const LatLng(41.315751, 69.529041),
          infoWindow: const InfoWindow(title: 'Gas Station 5'),
          icon: BitmapDescriptor.fromBytes(
            await getBytesFromAsset('assets/images/location_1.png', 140),
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: const MarkerId('marker6'),
          position: const LatLng(41.307386, 69.527144),
          infoWindow: const InfoWindow(title: 'Gas Station 6'),
          icon: BitmapDescriptor.fromBytes(
            await getBytesFromAsset('assets/images/locatin_2.png', 140),
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: const MarkerId('marker7'),
          position: const LatLng(41.311875, 69.521206),
          infoWindow: const InfoWindow(title: 'Gas Station 7'),
          icon: BitmapDescriptor.fromBytes(
            await getBytesFromAsset('assets/images/locatin_2.png', 140),
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: const MarkerId('marker8'),
          position: const LatLng(41.316905, 69.525171),
          infoWindow: const InfoWindow(title: 'Gas Station 8'),
          icon: BitmapDescriptor.fromBytes(
            await getBytesFromAsset('assets/images/location_1.png', 140),
          ),
        ),
      );
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

  void zoomIn(){
    googleMapController!.animateCamera(CameraUpdate.zoomIn());
  }

  void zoomOut(){
    googleMapController!.animateCamera(CameraUpdate.zoomOut());
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final mapController = ChangeNotifierProvider((ref) => MapController());

class MapController extends ChangeNotifier {

  final Completer<GoogleMapController> mapController = Completer<GoogleMapController>();

  final CameraPosition initialCameraPosition = const CameraPosition(
    target: LatLng(41.312605, 69.530335),
    zoom: 12,
  );
}
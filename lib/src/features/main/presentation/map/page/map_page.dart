import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fuel_zone/src/core/styles/colors.dart';
import 'package:fuel_zone/src/core/styles/images.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controller/map_controller.dart';
import '../controller/map_controller.dart';
import '../controller/map_controller.dart';
import '../widget/item_functions.dart';

class MapPage extends ConsumerWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(mapController);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          GoogleMap(
            markers: ref.read(mapController).markers,
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: const LatLng(41.313416, 69.528326),
              zoom: ref.read(mapController).zoom,
            ),
            onMapCreated: (GoogleMapController controller) {
              ref.read(mapController).googleMapController = controller;
            },
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ItemFunction(
                onPressed: () => ref.read(mapController).zoomIn(),
                color: AppColors.cE7E7E7,
                image: const Icon(Icons.add, size: 30),
              ),
              ItemFunction(
                onPressed: () => ref.read(mapController).zoomOut(),
                color: AppColors.cE7E7E7,
                image: const Icon(Icons.remove, size: 30),
              ),
              ItemFunction(
                onPressed: () => ref.read(mapController).resetZoom(),
                color: AppColors.cFF5722,
                image: AppImages.sendMap,
              ),
              const SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}
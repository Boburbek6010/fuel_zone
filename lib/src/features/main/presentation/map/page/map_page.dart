import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fuel_zone/src/core/styles/images.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controller/map_controller.dart';
import '../widget/send_widget.dart';

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
            zoomControlsEnabled: false,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            initialCameraPosition: ref.read(mapController).initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              ref.read(mapController).mapController.complete(controller);
            },
          ),
          SendWidget(
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}

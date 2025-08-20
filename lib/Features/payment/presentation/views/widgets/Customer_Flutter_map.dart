
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:latlong2/latlong.dart';
class CustomerFlutterMap extends StatelessWidget {
  const CustomerFlutterMap({
    super.key,
    required AnimatedMapController animatedMapController,
    required this.store,
    required this.customer,
  }) :
   _animatedMapController = animatedMapController;
  final AnimatedMapController _animatedMapController;
  final LatLng store;
  final LatLng customer;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _animatedMapController.mapController,
      options: MapOptions(initialCenter: store, initialZoom: 16),
      children: [
        TileLayer(
          urlTemplate:
              'https://tile.openstreetmap.org/{z}/{x}/{y}.png', //رابط لتحميل صور الخريطة من لخادم
          userAgentPackageName: "com.example.coffe_shop_project",
        ),
        MarkerLayer(//لعرض علامة حمراء في المركز الحالي
          markers: [
            Marker(
              point: store,
              child: Icon(
                Icons.store,
                color: Colors.brown,
                size: 45,
              ),
            ),
            Marker(
              point: customer,
              child: Icon(
                Icons.location_pin,
                color: Colors.red,
                size: 45,
              ),
            ),
          ],
        ),
        PolylineLayer(
          polylines: [
            Polyline(
              points: [store, customer],
              strokeWidth: 4,
              color: Colors.orange,
            ),
          ],
        ),
      ],
    );
  }
}
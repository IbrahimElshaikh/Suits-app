import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  final companylocation= LatLng(31.0229125,31.3901469);
  Set<Marker>markers={};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: GoogleMap(
  markers:markers,
  onTap: (location) {
    markers.add(Marker(markerId: MarkerId("${location.latitude}${location.longitude}"),position: location));
 setState(() {

 });
  },
  initialCameraPosition: CameraPosition(
    target:companylocation,
    zoom: 19
  ),
),
    );
  }
}

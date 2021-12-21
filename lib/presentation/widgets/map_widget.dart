import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:seven_world_wonders/data/world_wonders.dart';
import 'package:flutter/services.dart' show rootBundle;

class MapWidget extends StatefulWidget {
  final WorldWonder worldWonder;
  const MapWidget({Key? key, required this.worldWonder}) : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late String _mapStyle;

  @override
  void initState() {
    super.initState();

    rootBundle.loadString('assets/map_style.json').then((string) {
      _mapStyle = string;
    });
  }

  @override
  Widget build(BuildContext context) {
    GoogleMapController mapController;
    Iterable markers = [
      Marker(
        markerId: MarkerId(widget.worldWonder.name),
        position: widget.worldWonder.latLong,
        infoWindow: InfoWindow(title: widget.worldWonder.name, snippet: widget.worldWonder.description),
      )
    ];
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        initialCameraPosition: CameraPosition(
            target: widget.worldWonder.latLong,
            zoom: 11.0
        ),
        markers: Set.from(
          markers,
        ),
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;
            mapController.setMapStyle(_mapStyle);
          }
      ),
    );
  }
}

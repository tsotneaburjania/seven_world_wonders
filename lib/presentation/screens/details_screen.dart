import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:seven_world_wonders/data/world_wonders.dart';
import 'package:seven_world_wonders/presentation/widgets/map_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final WorldWonder _worldWonder = ModalRoute.of(context)!.settings.arguments as WorldWonder;

    return Scaffold(
      body: MapWidget(worldWonder: _worldWonder),
    );
  }
}

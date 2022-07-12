// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:here_maps/app/modules/maps/maps_controller.dart';
import 'package:here_sdk/core.dart';
import 'package:here_sdk/mapview.dart';

// ignore: must_be_immutable
class Maps extends StatelessWidget {
  Maps({Key? key}) : super(key: key);

  double _lat = 0, _long = 0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapsController>(
      builder: (_) {
        _lat = _.latitud;
        _long = _.longitud;
        return Row(
          children: [
            Container(
              padding: const EdgeInsets.all(2.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: HereMap(
                onMapCreated: _onMapCreated,
              ),
            ),
          ],
        );
      },
    );
  }

  void _onMapCreated(HereMapController hereMapController) {
    hereMapController.mapScene.loadSceneForMapScheme(MapScheme.satellite,
        (error) {
      if (error != null) {
        print("Error -> $error");
        return;
      }
      double distanceToEarthInMeters = 8000;
      // ignore: deprecated_member_use_from_same_package
      hereMapController.camera.lookAtPointWithDistance(
          GeoCoordinates(_lat, _long), distanceToEarthInMeters);
    });
  }
}

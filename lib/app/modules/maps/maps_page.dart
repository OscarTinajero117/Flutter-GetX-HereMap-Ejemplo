import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:here_maps/app/global_widgets/splash.dart';
import 'package:here_maps/app/modules/maps/maps_controller.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapsController>(
      id: 'maps',
      builder: (_) {
        if (_.loading) {
          return const Splash(mensaje: "Loading");
        }
        return Scaffold(
          appBar: AppBar(
            title: Text(_.direccion.nombre),
          ),
          body: Column(
            children: [
              Center(
                child: Text(
                  "Latitud   |   Longitud\n${_.direccion.latitud} | ${_.direccion.longitud}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              //const Maps(),
            ],
          ),
        );
      },
    );
  }
}

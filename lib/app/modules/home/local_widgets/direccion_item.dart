import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:here_maps/app/data/models/direcciones.dart';
import 'package:here_maps/app/modules/home/home_controller.dart';

class DireccionItem extends StatelessWidget {
  final Direcciones direccion;
  const DireccionItem({Key? key, required this.direccion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) {
        return ListTile(
          title: Text(
            direccion.nombre,
            style: const TextStyle(fontSize: 20.0),
          ),
          subtitle: Text(
            "${direccion.calles} #${direccion.numero}, ${direccion.colonia}",
          ),
          minVerticalPadding: 5.0,
          trailing: IconButton(
            icon: const Icon(Icons.map),
            color: Colors.green,
            onPressed: () {
              _.goToMap(direccion);
            },
          ),
        );
      },
    );
  }
}

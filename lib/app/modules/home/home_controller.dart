// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:here_maps/app/data/models/direcciones.dart';
import 'package:here_maps/app/data/repositories/local/direcciones_repository.dart';
import 'package:here_maps/app/routers/app_routes.dart';

class HomeController extends GetxController {
  ///<--- Repositories
  final DireccionesRepository _direccionesRepository =
      Get.find<DireccionesRepository>();

  ///--->
  ///<---List
  List<Direcciones> _direcciones = [];
  List<Direcciones> get direcciones => _direcciones;

  ///--->
  ///<---overriders
  @override
  onReady() {
    _load();
    super.onReady();
  }

  ///--->
  ///<---Loading
  bool _loading = true;
  bool get loading => _loading;

  Future<void> _load() async {
    try {
      _direcciones = await _direccionesRepository.getDirecciones();
      print("Direcciones::::: ${_direcciones.length} ");

      _loading = false;
      update(['home']);
    } catch (e) {
      print(e);
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  ///--->
  ///<---goToMap
  void goToMap(Direcciones direccion) {
    Get.toNamed(AppRoutes.MAPS, arguments: direccion);
  }

  ///--->

}

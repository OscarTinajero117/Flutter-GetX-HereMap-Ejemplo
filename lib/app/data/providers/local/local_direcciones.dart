import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:here_maps/app/data/models/direcciones.dart';

class DireccionesProvider {
  List<Direcciones> _direcciones = [];

  Future<List<Direcciones>> getListDirecciones() async {
    final String direccionesString =
        await rootBundle.loadString('assets/directions.json');

    _direcciones = (jsonDecode(direccionesString) as List)
        .map((e) => Direcciones.fromJson(e))
        .toList();
    return _direcciones;
  }
}

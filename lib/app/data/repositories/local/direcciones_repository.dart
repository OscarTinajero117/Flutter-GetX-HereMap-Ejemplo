import 'package:get/get.dart';
import 'package:here_maps/app/data/models/direcciones.dart';
import 'package:here_maps/app/data/providers/local/local_direcciones.dart';

class DireccionesRepository {
  final DireccionesProvider _direccionesProvider =
      Get.find<DireccionesProvider>();

  Future<List<Direcciones>> getDirecciones() =>
      _direccionesProvider.getListDirecciones();
}

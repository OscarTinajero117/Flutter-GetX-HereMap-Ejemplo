import 'package:get/get.dart';
import 'package:here_maps/app/data/providers/local/local_direcciones.dart';
import 'package:here_maps/app/data/repositories/local/direcciones_repository.dart';

class DependencyInjection {
  static void init() {
    ///Providers
    Get.lazyPut<DireccionesProvider>(
      () => DireccionesProvider(),
      fenix: true,
    );

    ///Repositories
    Get.lazyPut<DireccionesRepository>(
      () => DireccionesRepository(),
      fenix: true,
    );
  }
}

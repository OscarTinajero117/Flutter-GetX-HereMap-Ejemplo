// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:here_maps/app/modules/home/home_binding.dart';
import 'package:here_maps/app/modules/home/home_page.dart';
import 'package:here_maps/app/modules/maps/maps_binding.dart';
import 'package:here_maps/app/modules/maps/maps_page.dart';
import 'package:here_maps/app/routers/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.MAPS,
      page: () => MapsPage(),
      binding: MapsBinding(),
    ),
  ];
}

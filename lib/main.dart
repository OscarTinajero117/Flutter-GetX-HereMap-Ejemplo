import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:here_maps/app/modules/home/home_binding.dart';
import 'package:here_maps/app/modules/home/home_page.dart';
import 'package:here_maps/app/routers/app_pages.dart';
import 'package:here_maps/app/util/dependency_injection.dart';
import 'package:here_sdk/core.dart';

// import 'package:flutter_map/flutter_map.dart'; // Suitable for most situations
// import 'package:flutter_map/plugin_api.dart'; // Only import if required functionality is not exposed by 'flutter_map.dart'
// import 'package:latlong2/latlong.dart'; // Recommended for most use-cases

void main() {
  SdkContext.init(IsolateOrigin.main);
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Map Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
      initialBinding: HomeBinding(),
      getPages: AppPages.pages,
    );
  }
}

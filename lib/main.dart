import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kt8/app/data/services/api_service.dart';
import 'package:kt8/app/data/services/auth_servise.dart';
import 'package:kt8/app/data/services/storage_service.dart';

import 'app/routes/app_pages.dart';

void main() {
  initServices();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)),
      getPages: AppPages.routes,
    ),
  );
}

void initServices() async {
  await Get.putAsync(()=>StorageService().init());
  await Get.putAsync(() => ApiService().init());
  await Get.putAsync(()=>AuthService().init());
}

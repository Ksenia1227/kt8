import 'package:get/get.dart';
import 'package:kt8/app/data/services/api_service.dart';
import 'package:kt8/app/data/services/auth_servise.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  ApiService apiService=Get.find();
   var authService =AuthService.instance; 
  @override
  void onReady() {
    super.onReady();
    authService.trySign();
  }
}
  
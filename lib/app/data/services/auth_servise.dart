import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:kt8/app/data/services/storage_service.dart';
import 'package:kt8/app/routes/app_pages.dart';

class AuthService extends GetxService{
static AuthService get instance =>Get.find<AuthService>();

  bool isLoggedIn =false;
  var storageService=StorageService.instance;

void trySign(){
  if (isLoggedIn){
    Get.toNamed(Routes.HOME);
  }else {
    Get.toNamed(Routes.LOGIN);
  }
}

  void signOut(){
    isLoggedIn=false;
    storageService.clearStorage();
    Get.offAllNamed(Routes.LOGIN);
  }


  Future<AuthService> init()async{
    print('init on AuthService');
    return this;
  }
}
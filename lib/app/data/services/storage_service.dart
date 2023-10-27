import 'package:get/get.dart';

class StorageService extends GetxService{
  static StorageService get instance =>Get.find<StorageService>();
  String? getKeyValue(){}
   void setKeyValue(String key,dynamic value){}

   void clearStorage(){}
  Future<StorageService> init()async{

    print('init on StorageService');
    return this;
    
  }
}
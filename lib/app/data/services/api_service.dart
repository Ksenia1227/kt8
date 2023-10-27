import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:kt8/core/constants.dart';

class ApiService extends GetxService{
  static get  instance =>Get.find<ApiService>();
  Dio client=Dio(BaseOptions(baseUrl: Constants.baseApiUrl));
  Future<ApiService> init()async{
    print('init on ApiService');
    return this;
  }
}
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class myServices extends GetxService{
  late SharedPreferences sharedPreferences;
  Future<myServices> init()async{
    sharedPreferences=await SharedPreferences.getInstance();
    return this;
  }
}

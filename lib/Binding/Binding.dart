import 'package:education_system/Core/Class/crud.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class IntialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(crud());
  }

}
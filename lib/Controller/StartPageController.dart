import 'package:education_system/Core/Const/RoutesName.dart';
import 'package:get/get.dart';

abstract class StartPageController extends GetxController{
 GotoSignUp();
 GotoLogin();
}
class StartPageControllerImp extends StartPageController{
  @override
  GotoLogin() {
    Get.toNamed(RoutesApp.Login);
  }

  @override
  GotoSignUp() {
    Get.toNamed(RoutesApp.SignUp);
  }

}
import 'package:education_system/Core/Const/RoutesName.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  GotoForgetPass();
  GotoSignUp();
  GotoHome();
}
class LoginControllerImp extends LoginController{
  @override
  GotoForgetPass() {
    //Get.toNamed(RoutesApp.Login);
  }

  @override
  GotoSignUp() {
    Get.toNamed(RoutesApp.SignUp);
  }

  @override
  GotoHome() {
   Get.offAllNamed(RoutesApp.StudentHomePage);
  }

}
import 'package:education_system/Core/Const/RoutesName.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{
  GotoLogin();
  GotoVerificationCode();
}
class SignUpControllerImp extends SignUpController{

  @override
  GotoLogin() {
    Get.toNamed(RoutesApp.Login);
  }

  @override
  GotoVerificationCode() {
    // TODO: implement GotoVerificationCode
    throw UnimplementedError();
  }

}
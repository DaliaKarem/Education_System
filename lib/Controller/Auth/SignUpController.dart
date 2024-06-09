import 'package:education_system/Core/Class/statusReq.dart';
import 'package:education_system/Core/Const/RoutesName.dart';
import 'package:education_system/Core/Functions/handlingData.dart';
import 'package:education_system/Core/Services/services.dart';
import 'package:education_system/Data/DataSrc/Remote/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
abstract class SignUpController extends GetxController {
   SignUp();
   GotoLogin();
   GotoVerificationCode();
}

class SignUpControllerImp extends SignUpController {
  bool Press = true;
  int selectedRole = 0;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController userName;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  List getData = [];
  statusReq? status;
  SignupStuentData signupStudentData = SignupStuentData(Get.find());
  SignupTeacherData signupTeacherData = SignupTeacherData(Get.find());

  void showPass() {
    Press = !Press;
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    userName = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    userName.dispose();
    super.dispose();
  }

  @override
  void GotoLogin() {
    Get.toNamed(RoutesApp.Login);
  }

  @override
  void GotoVerificationCode() {
    // Implementation for verification code navigation
  }

  @override
  void SignUp() async {
    var form = formstate.currentState;
    if (form!.validate()) {
      status = statusReq.loading;
      update();

      var res;
      if (selectedRole == 0) {
        res = await signupStudentData.postData(userName.text, email.text, password.text);
      } else if (selectedRole == 1) {
        res = await signupTeacherData.postData(userName.text, email.text, password.text);
      }

      status = handlingData(res);
      print("Selecter Role $selectedRole     $status");
      if (status == statusReq.success) {
        if (res['status'] == 'success') {
          Get.offAllNamed(RoutesApp.Login);
        } else {
          Get.defaultDialog(title: "Warning", middleText: "Email or Phone Exists");
          status = statusReq.fail;
        }
      }
      update();
    } else {
      print("Error in sign up");
    }
  }
}
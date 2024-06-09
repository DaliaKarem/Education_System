import 'package:education_system/Core/Class/statusReq.dart';
import 'package:education_system/Core/Const/RoutesName.dart';
import 'package:education_system/Core/Functions/handlingData.dart';
import 'package:education_system/Core/Services/services.dart';
import 'package:education_system/Data/DataSrc/Remote/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
abstract class LoginController extends GetxController {
  void gotoForgetPass();
  void gotoSignUp();
  void login();
}

class LoginControllerImp extends LoginController {
  var press = true;
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  statusReq? status;
  loginStuentData loginStudent = loginStuentData(Get.find());
  loginTeacherData loginTeacher = loginTeacherData(Get.find());
  MyServices myServices = Get.find();

  void showPass() {
    press = !press;
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  void gotoForgetPass() {
    //Get.toNamed(RoutesApp.Login);
  }

  @override
  void gotoSignUp() {
    Get.toNamed(RoutesApp.SignUp);
  }

  int selectedRole = 0; // 0 for student, 1 for teacher

  @override
  void login() async {
    var form = formState.currentState;
    if (form!.validate()) {
      status = statusReq.loading;
      update();

      try {
        var res = await (selectedRole == 0
            ? loginStudent.postData(email.text, password.text)
            : loginTeacher.postData(email.text, password.text));

        status = handlingData(res);

        if (status == statusReq.success) {
          if (res['status'] == 'success') {
            myServices.sharedPreferences.setString("id", res['data']['id']);
            myServices.sharedPreferences.setString("email", res['data']['email']);
            myServices.sharedPreferences.setString("name", res['data']['name']);
            myServices.sharedPreferences.setString("onboarding", "2");
            myServices.sharedPreferences.setString("Type", res['data']['type']);//0 Student _  1 Teaher
            Get.offNamed(RoutesApp.Home);
           // Get.offNamed(selectedRole == 0 ? RoutesApp.StudentHomePage : RoutesApp.TeacherHomePage);
          } else {
            Get.defaultDialog(title: "Error", middleText: "Email or Password is incorrect");
            status = statusReq.fail;
          }
        }
        update();
      } catch (e) {
        print("An error occurred: $e");
        status = statusReq.fail;
        update();
      }
    } else {
      print("Form validation failed");
    }
  }
}

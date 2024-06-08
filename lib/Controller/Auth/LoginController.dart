import 'package:education_system/Core/Class/statusReq.dart';
import 'package:education_system/Core/Const/RoutesName.dart';
import 'package:education_system/Core/Functions/handlingData.dart';
import 'package:education_system/Core/Services/services.dart';
import 'package:education_system/Data/DataSrc/Remote/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  GotoForgetPass();
  GotoSignUp();
  login();
}
class LoginControllerImp extends LoginController{
  var press=true;
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState>formState=GlobalKey<FormState>();
  statusReq? status;
  loginStuentData loginstudent=loginStuentData(Get.find());
  loginTeacherData loginTeacher=loginTeacherData(Get.find());

  myServices myservices=Get.find();
  showPass()
  {
    press=press==true?false:true;
    update();
  }
  @override
  void onInit() {
    email=TextEditingController();
    password=TextEditingController();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  GotoForgetPass() {
    //Get.toNamed(RoutesApp.Login);
  }

  @override
  GotoSignUp() {
    Get.toNamed(RoutesApp.SignUp);
  }
  int selectedRole = 0; // 0 for student, 1 for teacher

  @override
  void login() async {
    var form = formState.currentState;
    if (form!.validate()) {
      status = statusReq.loading;
      update();

      var res = await (selectedRole == 0
          ? loginstudent.postData(email.text, password.text)
          : loginTeacher.postData(email.text, password.text));

      status = handlingData(res);

      if (status == statusReq.success) {
        if (res['status'] == 'success') {
          myservices.sharedPreferences.setString("id", res['data']['user_id']);
          myservices.sharedPreferences.setString("email", res['data']['user_email']);
          myservices.sharedPreferences.setString("name", res['data']['user_name']);
          myservices.sharedPreferences.setString("onboarding", "2");

          Get.offNamed(selectedRole == 0 ? RoutesApp.StudentHomePage : RoutesApp.TeacherHomePage);
        } else {
          Get.defaultDialog(title: "Error", middleText: "Email or Pass No Correct");
          status = statusReq.fail;
        }
      }
      update();
    } else {
      print("Error in sign");
    }
  }
}
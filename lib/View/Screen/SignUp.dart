import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:education_system/Core/Const/appColors.dart';
import 'package:education_system/View/Widget/Auth/CustomDropDownTextField.dart';
import 'package:education_system/View/Widget/Auth/cusomTextField.dart';
import 'package:education_system/View/Widget/SharedWidgets/CustomButtons.dart';
import 'package:flutter/material.dart';
import 'package:education_system/Controller/Auth/SignUpController.dart';
import 'package:get/get.dart';
class SignUp extends StatelessWidget {
  final int? type;
  SignUp({Key? key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignUpControllerImp signUpControllerImp = Get.put(SignUpControllerImp());

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: signUpControllerImp.formstate,
            child: ListView(
              children: [
                Center(
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Create your Account",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 30),
                customTextField(
                  hint: 'Enter Name',
                  icon: Icon(Icons.person),
                  label: "UserName",
                  control: signUpControllerImp.userName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                  isNum: false,
                ),
                SizedBox(height: 20),
                CustomDropDownTextField(
                  hint: 'Select Role',
                  dropDownList: [
                    DropDownValueModel(name: 'Teacher', value: "Teacher"),
                    DropDownValueModel(name: 'Student', value: "Student"),
                  ],
                  enableSearch: false,
                  dropDownItemCount: 8,
                  onChanged: (val) {
                    if (val.value == "Teacher") {
                      signUpControllerImp.selectedRole = 1;
                    } else if (val.value == "Student") {
                      signUpControllerImp.selectedRole = 0;
                    }
                  },
                  validator: (value) {
                    if (value == null) {
                      return "Required field";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20),
                customTextField(
                  hint: 'Enter Email',
                  icon: Icon(Icons.email),
                  label: "Email",
                  control: signUpControllerImp.email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  isNum: false,
                ),
                SizedBox(height: 20),
                GetBuilder<SignUpControllerImp>(builder: (controller) {
                  return customTextField(
                    isPress: controller.Press,
                    hint: 'Enter Password',
                    icon: Icon(Icons.password),
                    iconVis: Icon(Icons.visibility),
                    iconUnVis: Icon(Icons.visibility_off),
                    label: "Password",
                    control: signUpControllerImp.password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    isNum: false,
                    ontapIcon: controller.showPass,
                  );
                }),
                SizedBox(height: 20),
                customTextField(
                  hint: 'Confirm password',
                  icon: Icon(Icons.password),
                  iconVis: Icon(Icons.visibility),
                  iconUnVis: Icon(Icons.visibility_off),
                  label: "Password",
                  control: TextEditingController(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != signUpControllerImp.password.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  isNum: false,
                ),
                SizedBox(height: 30),
                CustomButtons(
                  text: 'Sign Up',
                  color: appColor.primaryColor,
                  textColor: Colors.white,
                  onpressed: () {
                    signUpControllerImp.SignUp();
                  },
                  vertical: 15,
                  hori: 10,
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "-------------------------OR---------------------",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 30),
                CustomButtons(
                  text: 'Sign Up With Google',
                  color: Colors.white,
                  borderColor: appColor.primaryColor,
                  textColor: appColor.primaryColor,
                  onpressed: () {},
                  vertical: 15,
                  hori: 10,
                ),
                Row(
                  children: [
                    Text("Already have an Account?"),
                    TextButton(
                      onPressed: () {
                        signUpControllerImp.GotoLogin();
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: appColor.primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:education_system/Core/Class/statusReq.dart';
import 'package:education_system/Core/Const/appColors.dart';
import 'package:education_system/Core/Functions/ValidatorInput.dart';
import 'package:education_system/View/Widget/Auth/CustomDropDownTextField.dart';
import 'package:education_system/View/Widget/Auth/cusomTextField.dart';
import 'package:education_system/View/Widget/SharedWidgets/CustomButtons.dart';
import 'package:flutter/material.dart';
import 'package:education_system/Controller/Auth/SignUpController.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
class SignUp extends StatelessWidget {
  final int? type;
  SignUp({Key? key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<SignUpControllerImp>
          (
          builder: (controller)
          {
            return controller.status==statusReq.loading
                ?Lottie.asset("img/lottie/Loading.json")
                :Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: controller.formstate,
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
                      control: controller.userName,
                      validator: (value) {
                        return ValidatorInput("username", value!, 4, 20);
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
                          controller.selectedRole = 1;
                        } else if (val.value == "Student") {
                          controller.selectedRole = 0;
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
                      control: controller.email,
                      validator: (value) {
                        return ValidatorInput("email", value!, 15, 40);
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
                        control: controller.password,
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
                        if (value != controller.password.text) {
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
                        controller.SignUp();
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
                            controller.GotoLogin();
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
            );
          },
        )
      ),
    );
  }
}

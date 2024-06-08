import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:education_system/Controller/Auth/LoginController.dart';
import 'package:education_system/Core/Const/appColors.dart';
import 'package:education_system/View/Widget/Auth/CustomDropDownTextField.dart';
import 'package:education_system/View/Widget/Auth/cusomTextField.dart';
import 'package:education_system/View/Widget/SharedWidgets/CustomButtons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginControllerImp loginControllerImp = Get.put(LoginControllerImp());

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: loginControllerImp.formState,
            child: ListView(
              children: [
                Center(
                  child: Text(
                    "Welcome Back",
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
                    "Enter your Credential to login",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 30),
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
                      loginControllerImp.selectedRole = 1;
                    } else if (val.value == "Student") {
                      loginControllerImp.selectedRole = 0;
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
                SizedBox(height: 30),
                customTextField(
                  hint: 'Enter Email',
                  icon: Icon(Icons.email),
                  label: "Email",
                  control: loginControllerImp.email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  isNum: false,
                ),
                SizedBox(height: 20),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) {
                    return customTextField(
                      isPress: controller.press,
                      hint: 'Enter Password',
                      icon: Icon(Icons.password),
                      iconVis: Icon(Icons.visibility),
                      iconUnVis: Icon(Icons.visibility_off),
                      label: "Password",
                      control: loginControllerImp.password,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      isNum: false,
                      ontapIcon: controller.showPass,
                    );
                  },
                ),
                SizedBox(height: 30),
                CustomButtons(
                  text: 'Login',
                  color: appColor.primaryColor,
                  textColor: Colors.white,
                  onpressed: () {
                    if (loginControllerImp.formState.currentState!.validate()) {
                      loginControllerImp.login();
                    }
                  },
                  vertical: 15,
                  hori: 10,
                ),
                TextButton(
                  onPressed: () {
                   // loginControllerImp.gotoForgotPassword();
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(color: appColor.primaryColor),
                    textAlign: TextAlign.end,
                  ),
                ),
                Row(
                  children: [
                    Text("Don't Have An Account?"),
                    TextButton(
                      onPressed: () {
                        loginControllerImp.GotoSignUp();
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(color: appColor.primaryColor),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

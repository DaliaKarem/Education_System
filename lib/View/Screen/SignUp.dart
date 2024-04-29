import 'package:education_system/Core/Const/appColors.dart';
import 'package:education_system/View/Widget/Auth/cusomTextField.dart';
import 'package:education_system/View/Widget/SharedWidgets/CustomButtons.dart';
import 'package:flutter/material.dart';
import 'package:education_system/Controller/Auth/SignUpController.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp signUpControllerImp=Get.put(SignUpControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            //key: ,
            child: ListView(children: [
              Center(
                //padding: const EdgeInsets.all(20.0),
                child: Text(
                  "SignUp",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("Create your Account",
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              customTextField(
                hint: 'Enter Name',
                icon: Icon(Icons.person),
                label: "UserName",
              ),
              SizedBox(
                height: 20,
              ),
              customTextField(
                hint: 'Enter Email',
                icon: Icon(Icons.email),
                label: "Email",
              ),
              SizedBox(
                height: 20,
              ),
              customTextField(
                hint: 'Enter Password',
                icon: Icon(Icons.password),
                iconVis: Icon(Icons.visibility),
                iconUnVis: Icon(Icons.visibility_off),
                label: "Password",
              ),
              SizedBox(
                height: 20,
              ),
              customTextField(
                hint: 'Confirm password',
                icon: Icon(Icons.password),
                iconVis: Icon(Icons.visibility),
                iconUnVis: Icon(Icons.visibility_off),
                label: "Password",
              ),
              SizedBox(
                height: 30,
              ),
              CustomButtons(
                text: 'Sign Up',
                color: appColor.primaryColor,
                textColor: Colors.white,
                onpressed: () {},
                vertical: 15,
                hori: 10,
              ),
              SizedBox(height: 30,),
              Center(
                child: Text("-------------------------OR---------------------",style: TextStyle(fontSize: 15),)
              ),
              SizedBox(height: 30,),
              CustomButtons(
                text: 'Sign in With Google',
                color: Colors.white,
                borderColor: appColor.primaryColor,
                textColor: appColor.primaryColor,
                onpressed: () {},
                vertical: 15,
                hori: 10,
              ),
              Row(
                children: [
                  Text("Already have an Account ?"),
                  TextButton(onPressed: () {
                    signUpControllerImp.GotoLogin();
                  },child: Text("Login",style: TextStyle(color: appColor.primaryColor),),)
                ],
              )
                ]),
          ),
        ),
      ),
    );
  }
}

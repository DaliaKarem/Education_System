import 'package:education_system/Controller/StartPageController.dart';
import 'package:education_system/Core/Const/appColors.dart';
import 'package:education_system/View/Widget/SharedWidgets/CustomButtons.dart';
import 'package:education_system/View/Widget/Startpage/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StartPageControllerImp startPageControllerImp=Get.put(StartPageControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "Education System",
                style: TextStyle(
                  fontSize: 30,
                  color: appColor.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Image.asset("img/Education-bro.png"),
              flex: 4,
            ),
            Expanded(
              child: CustomText(text:  "Discover the future of education with our innovative solutions.",color: appColor.blackColor,size: 20,),
              flex: 2,
            ),
            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtons(hori: 50,text: 'Sign Up', color: appColor.primaryColor,textColor: Colors.white,onpressed: (){
                  startPageControllerImp.GotoSignUp();
                },),
                SizedBox(width: 50,),
                CustomButtons(hori: 50,text: 'Login', color: appColor.primaryColor,textColor: Colors.white,onpressed: (){
                  startPageControllerImp.GotoLogin();
                },)

              ],
            ))
          ],
        ),
      ),
    );
  }
}

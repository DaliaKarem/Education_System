import 'package:education_system/Core/Class/Courses.dart';
import 'package:education_system/Core/Services/services.dart';
import 'package:education_system/View/Screen/Shared/Calender.dart';
import 'package:education_system/View/Screen/Student/Courses.dart';
import 'package:education_system/View/Screen/Student/StudentHomePage.dart';
import 'package:education_system/View/Screen/Teacher/TeacherHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController{
changePAges(int Current);
}
class HomePageControllerImp extends HomePageController{
  int page = 0;
  late MyServices myServices;
  late List<Widget> Pages;

  HomePageControllerImp() {
    myServices = Get.find();
    Pages = [
      (myServices.sharedPreferences.getString("type") == "0") ? StudentHomePage() : TeacherHomePage(),
      Courses(),
      Calender(),
      Column(
        children: [
          Text("Chat")
        ],
      ),
      Column(
        children: [
          Text("Profile")
        ],
      ),
    ];
  }

  @override
  void changePAges(int current) {
    page = current;
    update();
  }

}
import 'package:education_system/View/Screen/Student/StudentHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController{
changePAges(int Current);
}
class HomePageControllerImp extends HomePageController{
  int page=0;
  List<Widget>Pages=[
    //Home
    StudentHomePage(),
    Column(
      children: [
        Text("Calender")
      ],
    ),
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
    //Calender
    //Chat
    //profile
  ];
  @override
  changePAges(int Current) {
    page=Current;
    update();
  }


}
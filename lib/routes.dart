import 'package:education_system/Core/Const/RoutesName.dart';
import 'package:education_system/View/Screen/HomePage.dart';
import 'package:education_system/View/Screen/Login.dart';
import 'package:education_system/View/Screen/SignUp.dart';
import 'package:education_system/View/Screen/StartPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
List<GetPage<dynamic>>?routes=[
  GetPage(name: "/", page:()=> StartPage()),
  GetPage(name: RoutesApp.SignUp, page:()=>SignUp()),
  GetPage(name: RoutesApp.Login, page:()=>Login()),
  GetPage(name: RoutesApp.HomePage, page:()=>HomePage()),


];
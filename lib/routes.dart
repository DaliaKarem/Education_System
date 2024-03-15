import 'package:education_system/View/Screen/StartPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
List<GetPage<dynamic>>?routes=[
  GetPage(name: "/", page:()=> StartPage());
];
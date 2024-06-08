import 'package:education_system/Core/Services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class middelware extends GetMiddleware{
  //priority
  @override
  int? get priority=>1;
  myServices myservices=Get.find();
  @override
  RouteSettings? redirect(String? route){
    if(myservices.sharedPreferences.getString("onboarding")=="2")
    {
      //return RouteSettings(name: routeApp.Home);
    }
    if(myservices.sharedPreferences.getString("onboarding")=="1")
    {
     // return RouteSettings(name: routeApp.Login);
    }

  }
}
import 'package:education_system/Controller/Student/CoursesPageController.dart';
import 'package:education_system/View/Widget/Courses/coursesListView.dart';
import 'package:education_system/View/Widget/SharedWidgets/CustomSearch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CoursesPageControllerImp());
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          CustomSearch(onPressed: () {  }),
          CoursesListView(),
        ],
      ),
    );
  }
}
//import 'package:education_system/Controller/StudentHomePageController.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:education_system/Core/Class/Courses.dart';
import 'package:education_system/Core/Const/appColors.dart';
import 'package:education_system/View/Widget/HomePage/CustomBackGrond.dart';
import 'package:education_system/View/Widget/HomePage/GridViewCourses.dart';
import 'package:education_system/View/Widget/HomePage/ScrolledImages.dart';
import 'package:education_system/View/Widget/SharedWidgets/CustomSearch.dart';
import 'package:flutter/material.dart';
class StudentHomePage extends StatelessWidget {
  const StudentHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackGround(),
          ScrolledImages(),
          Positioned(
            top: 340,
            left: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Student Student",
                    style: TextStyle(
                      color: appColor.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "My Subject",
                    style: TextStyle(fontSize: 16),
                  ),
                  GridViewCourses(
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "My Progress",
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.query_builder_sharp,color: appColor.primaryColor,size: 30,),
                    ],
                  ),
                  ListView.builder(
                     shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text("Networking"),
                                Text("Lesson 4"),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.build_circle_sharp),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

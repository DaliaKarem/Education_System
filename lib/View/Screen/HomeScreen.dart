import 'package:education_system/Controller/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return GetBuilder<HomePageControllerImp>(
        builder: (controller){
          return Scaffold(
            bottomNavigationBar: SalomonBottomBar(
              currentIndex: controller.page,
              onTap: (index){
                controller.changePAges(index);
              },
              items: [
                /// Home
                SalomonBottomBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                  selectedColor: Colors.green,
                ),

                /// Likes
                SalomonBottomBarItem(
                  icon: Icon(Icons.calendar_month),
                  title: Text("Calender"),
                  selectedColor: Colors.yellow,
                ),

                /// Search
                SalomonBottomBarItem(
                  icon: Icon(Icons.chat),
                  title: Text("Chat"),
                  selectedColor: Colors.orange,
                ),

                /// Profile
                SalomonBottomBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Profile"),
                  selectedColor: Colors.blue,
                ),
              ],
            ),
            body: controller.Pages.elementAt(controller.page),
          );
        });
  }
}

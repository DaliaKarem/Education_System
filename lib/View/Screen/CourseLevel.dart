import 'package:flutter/material.dart';
class CourseLevel extends StatelessWidget {
  const CourseLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder:(context,index){
          return Container(
            child: Text("Level 1"),
          );
        },
      itemCount: 5,
      ),
    );
  }
}

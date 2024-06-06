import 'package:education_system/Core/Const/appColors.dart';
import 'package:flutter/material.dart';
class CustomBackGround extends StatelessWidget {
  const CustomBackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [appColor.primaryColor, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Class_6",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(bottom: 30, right: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Colors.white,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("S"),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

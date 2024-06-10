import 'package:education_system/Core/Const/appColors.dart';
import 'package:education_system/View/Screen/Shared/Profile.dart';
import 'package:education_system/View/Widget/SharedWidgets/ProfileFields.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text('Edit Profile',style: TextStyle(color: appColor.primaryColor,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
           Stack(
             children: [
               CircleAvatar(
                 radius: 90,
                 backgroundImage: NetworkImage( "https://www.shutterstock.com/image-photo/young-confident-handsome-man-full-260nw-1416442523.jpg"), // Replace with the actual image URL
                 child: Align(
                   alignment: Alignment.bottomRight,
                   child: Icon(
                     Icons.edit,
                     color: Colors.white,
                     size: 20,
                   ),
                 ),
               ),
               Positioned(
                 top: -12,
                 right: 10,
                 child: IconButton(icon:Icon(Icons.edit,color: Colors.blue,),onPressed: (){},),)
             ],
           ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileField(
                  title: 'Name',
                  value: 'Test Test',
                ),
                ProfileField(
                  title: 'Phone',
                  value: '(208) 206-5039',
                ),
                ProfileField(
                  title: 'Email',
                  value: 'test.test@gmail.com',
                ),
                ProfileField(
                  title: 'Tell Us About Yourself',
                  value:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...',
                  isTextArea: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


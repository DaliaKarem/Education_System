import 'package:education_system/Core/Class/Courses.dart';
import 'package:education_system/Core/Const/appColors.dart';
import 'package:flutter/material.dart';

class GridViewCourses extends StatelessWidget {
  GridViewCourses({Key? key, required this.onTap}) : super(key: key);
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.6,
      ),
      itemCount: homeCourses.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: onTap,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      homeCourses[index].courseImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      homeCourses[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

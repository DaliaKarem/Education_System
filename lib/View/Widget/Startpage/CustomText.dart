import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
   CustomText({Key? key,required this.text,this.color,required this.size}) : super(key: key);
  String text;
  Color ?color;
  double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          color: color??Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

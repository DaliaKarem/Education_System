import 'package:flutter/material.dart';
class CustomButtons extends StatelessWidget {
   CustomButtons({Key? key,this.borderColor,this.vertical,this.hori,required this.text,required this.color, required this.textColor,required this.onpressed ,this.height}) : super(key: key);
String text;
Color color,textColor;
   Color ?borderColor;
double?height;
  void Function()? onpressed;
  double? hori,vertical;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: borderColor != null
            ? Border.all(color: borderColor!)
            : null, // Check if borderColor is provided, if yes, add border
        borderRadius: BorderRadius.circular(8), // Adjust border radius as needed
      ),
      child: MaterialButton(
        height: height ?? 40,
        padding: EdgeInsets.symmetric(
          horizontal: hori ?? 100,
          vertical: vertical ?? 2,
        ),
        onPressed: onpressed,
        child: Text(text),
        color: color,
        textColor: textColor,
      ),
    );
  }
}

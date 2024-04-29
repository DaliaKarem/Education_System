import 'package:flutter/material.dart';
class customTextField extends StatelessWidget {
   customTextField({Key? key,this.ontapIcon,this.isPress,this.iconVis,this.iconUnVis,required this.hint,required this.icon,required this.label}) : super(key: key);
String label,hint;
   Widget icon;
   Widget ?iconVis,iconUnVis;
   bool ?isPress;
   void Function()? ontapIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        obscureText: isPress == null || isPress == false ? false : true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          prefixIcon: icon,
          suffixIcon: iconVis != null
              ? InkWell(
            child: isPress == null || isPress == false
                ? iconUnVis
                : iconVis,
            onTap: ontapIcon,
          )
              : null,
          label: Text(label),
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customTextField extends StatelessWidget {
  customTextField({
    Key? key,
    this.isPress,
    this.ontapIcon,
    this.iconVis,
    this.iconUnVis,
    required this.hint,
    required this.icon,
    required this.label,
    required this.control,
    required this.validator,
    required this.isNum,
  }) : super(key: key);

  final String label, hint;
  final Icon icon;
  final bool? isPress;
  final void Function()? ontapIcon;
  final TextEditingController? control;
  final bool isNum;
  final Icon? iconVis, iconUnVis;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: isNum ? TextInputType.numberWithOptions(decimal: true) : TextInputType.text,
        validator: validator,
        obscureText: isPress == null || isPress == false ? false : true,
        controller: control,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          prefixIcon: icon,
          suffixIcon: iconVis != null
              ? InkWell(
            child: isPress == null || isPress == false ? iconUnVis : iconVis,
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

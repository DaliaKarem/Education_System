import 'package:education_system/Core/Const/appColors.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class CustomDropDownTextField extends StatelessWidget {
  final String hint;
  final List<DropDownValueModel> dropDownList;
  final bool enableSearch;
  final int dropDownItemCount;
  final void Function(dynamic) onChanged;
  final String? Function(dynamic)? validator;

  const CustomDropDownTextField({
    Key? key,
    required this.hint,
    required this.dropDownList,
    this.enableSearch = false,
    this.dropDownItemCount = 4,
    required this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        DropDownTextField(
          listSpace: 10,
          listPadding: ListPadding(top: 10),
          enableSearch: enableSearch,
          validator: validator,
          dropDownList: dropDownList,
          listTextStyle: TextStyle(color: appColor.primaryColor),
          dropDownItemCount: dropDownItemCount,
          onChanged: onChanged,
          textFieldDecoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
class CustomSearch extends StatelessWidget {
   CustomSearch({Key? key,required this.onPressed,this.label,this.hori,this.height,this.ver}) : super(key: key);
  double? height,ver,hori;
  String? label;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height??80,
      padding: EdgeInsets.symmetric(vertical: ver??10,horizontal: hori??20),
      child: TextFormField(
        decoration: InputDecoration(
            label: Text(label??"Search....."),
            suffixIcon: IconButton(
              icon:Icon(Icons.search),
              onPressed: (){},
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ),
      ),
    );
  }
}

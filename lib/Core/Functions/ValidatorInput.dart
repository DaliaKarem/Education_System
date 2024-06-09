import 'package:get/get.dart';

ValidatorInput(String type,String val,int min,int max) {
  if(val.isEmpty)
  {
    return "This Field Required";
  }
  if(type=="username")
  {
    if(!GetUtils.isUsername(val))
    {
      return "Not Valid $type ";
    }
  }
  if(type=="email")
  {
    if(!GetUtils.isEmail(val))
    {
      return "Not Valid $type ";
    }
  }
  if(type=="phone")
  {
    if(!GetUtils.isPhoneNumber(val))
    {
      return "Not Valid $type ";
    }

  }

  if(val.length<min)
  {
    return "You have to Enter $type greater than $min character";
  }
  if(val.length>max)
  {
    return "You have to Enter $type smaller than $min character";

  }
}
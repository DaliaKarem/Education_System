
import 'package:education_system/Core/Class/statusReq.dart';

handlingData(res){
  if(res is statusReq)
  {
    return res;
  }
  else{
    return statusReq.success;
  }
}
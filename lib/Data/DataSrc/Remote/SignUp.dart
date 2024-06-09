import 'package:education_system/Core/Class/crud.dart';
import 'package:education_system/Links.dart';

class SignupTeacherData{
  crud _crud;
  SignupTeacherData(this._crud);
  //int n=11;
  postData(String name,String email,String pass)async{
    var res=await _crud.postData(linkApp.SignUp_Teacher, {
      "email":email,
      "password":pass,
      "name":name,
     // "Course_Id":n
    });
    return res.fold((l) => l, (r) => r);
  }
}
class SignupStuentData{
  crud _crud;
  SignupStuentData(this._crud);
  postData(String name,String email,String pass)async{
    var res=await _crud.postData(linkApp.SignUp_Student, {
      "email":email,
      "password":pass,
      "name":name,

    });
    return res.fold((l) => l, (r) => r);
  }
}
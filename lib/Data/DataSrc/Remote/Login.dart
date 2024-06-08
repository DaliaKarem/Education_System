import 'package:education_system/Core/Class/crud.dart';
import 'package:education_system/Links.dart';

class loginTeacherData{
  crud _crud;
  loginTeacherData(this._crud);
  postData(String email,String pass)async{
    var res=await _crud.postData(linkApp.Login_Teacher, {
      "email":email,
      "password":pass,
    });
    // print(res);
    // print(res.fold((l) => l, (r) => r));
    // print("////");
    return res.fold((l) => l, (r) => r);
  }
}
class loginStuentData{
  crud _crud;
  loginStuentData(this._crud);
  postData(String email,String pass)async{
    var res=await _crud.postData(linkApp.Login_Student, {
      "email":email,
      "password":pass,
    });
    // print(res);
    // print(res.fold((l) => l, (r) => r));
    // print("////");
    return res.fold((l) => l, (r) => r);
  }
}
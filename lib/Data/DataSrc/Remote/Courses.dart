
import 'package:education_system/Core/Class/crud.dart';
import 'package:education_system/Links.dart';

class getCourses{
  crud _crud;
  getCourses(this._crud);
  getData()async
  {
    var res=await _crud.getData(linkApp.Show_Courses);
    print("Ressss");
    print(res);
    return res.fold((l) => l, (r) => r);
  }
  // postData(String email,String pass)async{
  //   var res=await _crud.postData(linkApp.Login_Teacher, {
  //     "email":email,
  //     "password":pass,
  //   });
  //   // print(res);
  //   // print(res.fold((l) => l, (r) => r));
  //   // print("////");
  //   return res.fold((l) => l, (r) => r);
  // }
}
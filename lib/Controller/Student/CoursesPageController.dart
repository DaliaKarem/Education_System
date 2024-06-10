 import 'package:education_system/Core/Class/statusReq.dart';
import 'package:education_system/Core/Functions/handlingData.dart';
import 'package:education_system/Data/DataSrc/Remote/Courses.dart';
import 'package:education_system/Data/Model/Courses.dart';
import 'package:get/get.dart';

abstract class CoursesPageController extends GetxController{
get_Courses();
}
class CoursesPageControllerImp extends CoursesPageController{
 statusReq? status;
 getCourses get_courses=getCourses(Get.find());

 List courses=[];
 @override
 void onInit() {
    get_Courses();
  }
 @override
  get_Courses()async {
   update();
   status=statusReq.loading;
   var res=await get_courses.getData();
   status=handlingData(res);
   if(status==statusReq.success)
     {
       if(res['status']=='success')
       {
         List resdata=res['data'];
         courses.addAll(resdata.map((e) => CoursesModel.fromJson(e)));
         print("courses is:   ${courses}");
       }
       else{
         status=statusReq.fail;
       }
     }
   update();
  }

}

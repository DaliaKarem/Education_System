class CoursesModel {
  String? id;
  String? name;
  String? numVideos;
  String? numStudentsSub;
  String? teacherId;
  String? courseName;
  String? teacherName;
  String? teacherEmail;

  CoursesModel(
      {this.id,
        this.name,
        this.numVideos,
        this.numStudentsSub,
        this.teacherId,
        this.courseName,
        this.teacherName,
        this.teacherEmail});

  CoursesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    numVideos = json['num_Videos'];
    numStudentsSub = json['num_Students_Sub'];
    teacherId = json['Teacher_id'];
    courseName = json['Course_name'];
    teacherName = json['Teacher_name'];
    teacherEmail = json['Teacher_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['num_Videos'] = this.numVideos;
    data['num_Students_Sub'] = this.numStudentsSub;
    data['Teacher_id'] = this.teacherId;
    data['Course_name'] = this.courseName;
    data['Teacher_name'] = this.teacherName;
    data['Teacher_email'] = this.teacherEmail;
    return data;
  }
}
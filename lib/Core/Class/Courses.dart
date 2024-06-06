
class Courses{
  late String name;
  late String courseImg;
  //late List<Courses> insideCourse;

  Courses(this.name, this.courseImg);

  Courses.name(this.name, this.courseImg);
}
List <Courses> homeCourses=[
  Courses("Networking","https://img.freepik.com/free-vector/online-world-concept-illustration_114360-1092.jpg" ),
  Courses("Web Development", "https://www.elegantthemes.com/blog/wp-content/uploads/2018/12/top11.png"),
  Courses("Mobile Development", "https://assets-global.website-files.com/6410ebf8e483b5bb2c86eb27/6410ebf8e483b5758186fbd8_ABM%20college%20mobile%20app%20dev%20main.jpg"),
  Courses("Dev Ops", "https://media.dev.to/cdn-cgi/image/width=1280,height=720,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2Fytw2z3kn47ang4vendyd.png")
];
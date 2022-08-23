class User{

 String name = '';
 String lastName = '';
 User({required this.name, required this.lastName});
}

class Student extends User {
  int yearOfAdmission;

  Student({required super.name, required super.lastName , required this.yearOfAdmission});


}

void main(List<String> args){
  var s = Student(name: 'Kirill', lastName: 'Andreev',  yearOfAdmission: 2012);
  int myYear = DateTime.now().year - s.yearOfAdmission;
  print('${s.name} ${s.lastName}: year of study - ${myYear}');
}


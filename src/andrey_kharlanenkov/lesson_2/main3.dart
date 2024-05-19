import 'main2.dart';

void main() {
  final Student student = Student('Федор Алексеев', 20, DateTime(2020));
  print(student);
}

class Student extends Person {
  final DateTime yearOfAdmission;

  Student(String fullName, int age, this.yearOfAdmission)
      : super(fullName, age);

  int get currentCourse {
    return DateTime.now().year - yearOfAdmission.year;
  }

  @override
  String toString() {
    return 'ФИО: $fullName Год поступления: ${yearOfAdmission.year} Курс: $currentCourse';
  }
}

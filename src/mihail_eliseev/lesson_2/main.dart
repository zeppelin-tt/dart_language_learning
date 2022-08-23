void main() {
  final person = Person('Mica Cuca', 30);
  person.talk();
  person.move();
  final stud = Student(age: 29, fullName: 'Распутин', dateOfAdmission: DateTime(2012));
  final studentDescription = stud.toString();
  print(studentDescription);
}
class Person {
  String fullName;
  int age;

  Person(this.fullName, this.age);

  void move() {
    print('$fullName двигается $age лет');
  }

  void talk() {
    print('$fullName говорит $age лет');
  }
}

class Student extends Person {
  final DateTime dateOfAdmission;

  Student({
     required String fullName,
     required int age,
     required this.dateOfAdmission,
  }) : super(fullName, age);

  int get currentCourse => DateTime.now().year - dateOfAdmission.year;

  @override
  toString() {
    return 'Имя: $fullName Фамилия: $age Год поступления: ${dateOfAdmission.year} Текущий курс $currentCourse';
  }
}

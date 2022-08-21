class Human {
  final String sex;
  final bool isAlive;
  final String race;

  Human({required this.sex, required this.isAlive, required this.race});
}

class HomoSapiens extends Human {
  final String height;
  final String weight;

  HomoSapiens(
      {required this.height,
      required this.weight,
      required super.sex,
      required super.isAlive,
      required super.race});
}

class Person extends HomoSapiens {
  final String fullName;
  final int age;

  Person(
      {required this.age,
      required this.fullName,
      required super.height,
      required super.weight,
      required super.sex,
      required super.isAlive,
      required super.race});

  void move() {
    print('$fullName  идет');
  }

  void talk() {
    print('$fullName  говорит');
  }
}

class Student extends Person {
  final String universityName;
  final String facultyName;
  final DateTime yearOfAdmission;
  int currentCourse;

  Student(
      {required super.age,
      required super.fullName,
      required this.universityName,
      required this.facultyName,
      required this.currentCourse,
      required super.height,
      required super.weight,
      required super.sex,
      required super.isAlive,
      required super.race})
      : yearOfAdmission = DateTime(2019);

  @override
  String toString() {
    return 'Имя: $fullName, Возраст: $age, Год поступления: $yearOfAdmission, Текущий курс: $currentCourse';
  }
}

class GreatStudent extends Student {
  final bool isAllMarksHigh;

  GreatStudent({
    required super.currentCourse,
    required super.age,
    required super.fullName,
    required this.isAllMarksHigh,
    required super.universityName,
    required super.facultyName,
    required super.height,
    required super.weight,
    required super.sex,
    required super.isAlive,
    required super.race,
  });
}

final GreatStudent _greatStudent = GreatStudent(
    currentCourse: 0,
    age: 21,
    isAllMarksHigh: true,
    universityName: 'Moscow State university',
    facultyName: 'Information-Technologies',
    fullName: 'Alex Ivanov',
    height: '180',
    weight: '82',
    sex: 'male',
    isAlive: true,
    race: 'European');

void main() {
  _greatStudent.currentCourse =
      DateTime.now().year - _greatStudent.yearOfAdmission.year;
  print(_greatStudent);
  _greatStudent
    ..talk()
    ..move();
}

import '../datetime_utils.dart';

class Substance {
  final double mass;
  Substance(this.mass);
}

class Alive extends Substance {
  final DateTime dateOfBirth;
  Alive(this.dateOfBirth, super.mass);
}

class Human extends Alive {
  final double height;
  Human(this.height, super.dateOfBirth, super.mass);
}

class Person extends Human {
  final String fullName;
  Person.fromAge(
    this.fullName,
    final int age, {
    final double? height,
    final double? mass,
  }) : super(height ?? 0, getDateYearsAgo(age), mass ?? 0);

  Person(this.fullName, super.height, super.dateOfBirth, super.mass);

  void move({String destination = 'Респаун'}) {
    print('$fullName двигается в пункт - $destination');
  }

  void talk({String speech = r'!@#$%^&'}) {
    print('$fullName говорит $speech');
  }
}

class Student extends Person {
  final DateTime yearOfAdmission;
  final int currentCourse;

  Student(
    this.yearOfAdmission,
    super.fullName,
    super.height,
    super.dateOfBirth,
    super.mass,
  ) : currentCourse = yearsPassed(yearOfAdmission) + 1;
  //если поступил в этом году, то на первом курсе

  @override
  String toString() {
    return 'ФИО: $fullName, год поступления: $yearOfAdmission, курс: $currentCourse.';
  }
}

void main() {
  final Person max = Person.fromAge('Максим', 34);
  final Person vovan = Person.fromAge('Владимир', 34);
  max.move();
  vovan.talk();
  final Student stVovan = Student(
    DateTime(2022, 06, 18),
    vovan.fullName,
    vovan.height,
    vovan.dateOfBirth,
    vovan.mass,
  );
  print(stVovan.toString());
}

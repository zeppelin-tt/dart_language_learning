extension on DateTime {
int differenceYear(DateTime other) => year - other.year;
}

class Transport {
  final String name;
  final int speed;
  final DateTime createdDate;

  const Transport({
    required this.name,
    required this.createdDate,
    required this.speed,
  });
}

class Auto extends Transport {
  final int countOfDoor;

  const Auto({
    required super.name,
    required super.createdDate,
    required super.speed,
    required this.countOfDoor,
  });
}

class AirPlane extends Transport {
  final int countOfEngine;

  const AirPlane({
    required super.name,
    required super.createdDate,
    required super.speed,
    required this.countOfEngine,
  });
}

class SportCar extends Auto {
  final int attractionCoefficient;

  const SportCar({
    required super.name,
    required super.createdDate,
    required super.speed,
    required super.countOfDoor,
    required this.attractionCoefficient,
  });
}

class HyperCar extends SportCar {
  final int windage;

  const HyperCar({
    required super.name,
    required super.createdDate,
    required super.speed,
    required super.countOfDoor,
    required super.attractionCoefficient,
    required this.windage,
  });
}

class Person {
  final String name;
  final String surname;
  final int age;

  String get fullName => '$name $surname';

  const Person({
    required this.name,
    required this.surname,
    required this.age,
  });

  void move() => print('$fullName двигается');

  void talk() => print('$fullName говорит');
}

class Student extends Person {
  final DateTime yearOfAdmission;
  final int currentCourse;

  @override
  String toString() {
    return '$fullName поступил в ${yearOfAdmission.year}. Учиться на $currentCourse курсе';
  }

  Student({
    required super.name,
    required super.surname,
    required super.age,
    required this.yearOfAdmission,
  }) : currentCourse = DateTime.now().differenceYear(yearOfAdmission);
}
void main() {
  const Person(fullName: 'Рик Санчез', age: 70).talk();
  const Person(fullName: 'Морти Смит', age: 14).move();
  Student(
    fullName: 'Саша Белый',
    age: 23,
    yearOfAdmission: DateTime.utc(2022),
  );
}

// 1. Создайте цепочку реальных объектов наследования, длиною 5 объектов.
// У каждого объекта должны быть поля и каждый child должен добавлять новые поля.
class OrkEmployee {
  final double health;

  const OrkEmployee({
    this.health = 50.0,
  });
}

class OrkWarrior extends OrkEmployee {
  final double physicalAtack;

  const OrkWarrior({
    this.physicalAtack = 10.0,
    super.health = 100.0,
  });
}

class OrkDefender extends OrkWarrior {
  final double physicalDefense;

  const OrkDefender({
    this.physicalDefense = 15.0,
    super.health = 150.0,
    super.physicalAtack = 8.0,
  });
}

class OrkWarlord extends OrkDefender {
  final double magicAtack;

  const OrkWarlord({
    this.magicAtack = 10.0,
    super.health = 200.0,
    super.physicalAtack = 20.0,
    super.physicalDefense = 25.0,
  });
}

class OrkKing extends OrkWarlord {
  final double magicDefense;

  const OrkKing({
    this.magicDefense = 40,
    super.health = 500.0,
    super.physicalAtack = 50.0,
    super.physicalDefense = 45.0,
    super.magicAtack = 30.0,
  });
}

// 2. Создать класс Person, который содержит:
// переменные fullName, age;
// методы move() и talk(), в которых просто вывести на консоль сообщение -"Такой-то  Person говорит".
// Добавьте конструктор Person(fullName, age).
// Создайте два объект этого класса. Объект инициализируется конструктором Person(fullName, age).
class Person {
  final String fullName;
  final int age;

  const Person({
    required this.fullName,
    required this.age,
  });

  void talk() => print('$fullName говорит - Морти. Давай, прошли и вышли');

  void move() => print('$fullName бежит и прыгает в портал');
}

// 3. Реализуйте класс Student (Студент), который будет наследоваться от класса Person.
// Класс должен иметь следующие свойства:
// yearOfAdmission:DateTime (год поступления в вуз): инициализируется в конструкторе
// currentCourse:int (текущий курс): рассчитывается след. образом - из текущего года вычесть год поступления.
// чтобы получить настоящее время - DateTime.now()
// чтобы получить годы из DateTime, воспользуйтесь свойством DateTime.year
// Класс должен иметь метод toString() , с помощью которого можно вывести:
// имя и фамилию студента - используя родительскую реализацию toString
// год поступления
// текущий курс

class Student extends Person {
  final DateTime yearOfAdmission;

  Student({
    required super.fullName,
    required super.age,
    required this.yearOfAdmission,
  });

  int get currentCourse => DateTime.now().year - yearOfAdmission.year + 1;

  @override
  String toString() => '$fullName $age ${yearOfAdmission.year} $currentCourse';
}

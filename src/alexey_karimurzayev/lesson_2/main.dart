// Задачи
// 1. Создайте цепочку реальных объектов наследования, длиною 5 объектов. У каждого объекта должны быть поля и каждый child должен добавлять новые поля.

class Protozoa {
  final String skeleton;

  Protozoa(this.skeleton);
}

class Insect extends Protozoa {
  final String type;

  Insect(String skeleton, this.type) : super(skeleton);
}

class Invertebrate  extends Insect {
  bool? fly;

  Invertebrate(String skeleton, String type, {this.fly}) : super(skeleton, type);
}

class Arthropod extends Invertebrate {
  String name;

  Arthropod(String skeleton, String type, this.name) : super(skeleton, type, fly: true);
}

class Vertebral extends Arthropod {
  String view;

  Vertebral(String skeleton, String type, String name, this.view) : super(skeleton, type, name);
}

// 2. Создать класс Person, который содержит:
// переменные fullName, age;
// методы move() и talk(), в которых просто вывести на консоль сообщение -"Такой-то  Person говорит".
// Добавьте конструктор Person(fullName, age).
// Создайте два объект этого класса. Объект инициализируется конструктором Person(fullName, age).

class Person {
  final String fullName;
  final int age;

  Person(this.fullName, this.age);

  void move() {
    print('Arthur moved strangely...');
  }

  void talk() {
    print('And talking to himself...');
  }
}

// 3. Реализуйте класс Student (Студент), который будет наследоваться от класса Person.
// Класс должен иметь следующие свойства:
//
// yearOfAdmission:DateTime (год поступления в вуз): инициализируется в конструкторе
// currentCourse:int (текущий курс): рассчитывается след. образом - из текущего года вычесть год поступления.
// чтобы получить настоящее время - DateTime.now()
// чтобы получить годы из DateTime, воспользуйтесь свойством DateTime.year
// Класс должен иметь метод toString() , с помощью которого можно вывести:
//
// имя и фамилию студента - используя родительскую реализацию toString
// год поступления
// текущий курс

class Student extends Person {
  int yearOfAdmission; // В условия написанно DateTime, но так не смог конвертировать в int, для вычисления currentCourse
  late int currentCourse;

  Student(
    String fullName,
    int age,
    this.yearOfAdmission,
  ) : super(fullName, age) {
    currentCourse = DateTime.now().year - yearOfAdmission + 1;
  }
  @override
  String toString() {
    return '$fullName, сейчас ему $age года и он поступил в универ в $yearOfAdmission и сейчас он на $currentCourse курсе';
  }
}

void main() {
  final arthur = Person('Arthur Shpulya', 44);
  print(arthur.fullName);
  print(arthur.age);
  arthur
    ..move()
    ..talk();
  print(Student('Arthur Shpulya', 44, 2019).toString());
}

// 3. Реализуйте класс Student (Студент), который будет наследоваться от класса User.
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

import '../../alexey_andreev/lesson_2/part2.dart';

class guitar {
  String name;
  String material;
  String strings;

  guitar(this.name, this.material, this.strings);
}

class acoustic extends guitar {
  final int sound;
}

class dreadnought extends guitar {
  final String shape;

  dreadnought(String name,
      String material,
      String strings,)
      : super(name, material, strings);
}

class d extends dreadnought {
  bool hasPiezo;

  d(String name,
      String material,
      String strings,
      this.hasPiezo,)
      : super(name, material, strings);
}

void main(List<String> args) {}

class Person {
  String fullname;
  int age;

  Person(this.fullname, this.age);

}
class student extends Person {

}

}

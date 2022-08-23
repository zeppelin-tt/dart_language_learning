// 3адачи
// 1. Создайте цепочку реальных объектов наследования, длиною 5 объектов.
//У каждого объекта должны быть поля и каждый child должен добавлять новые поля.
// 2. Создать класс Person, который содержит:
// переменные fullName, age;
// методы move() и talk(), в которых просто вывести на консоль сообщение -"Такой-то  Person говорит".
// Добавьте конструктор Person(fullName, age).
// Создайте два объект этого класса. Объект инициализируется конструктором Person(fullName, age).
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
///

class Electronics {
  String type;
  String brand;

  Electronics(this.type, this.brand);
}

class Appliances extends Electronics {
  final String forKitchen;
  Appliances(
    String type,
    String brand,
    this.forKitchen,
  ) : super(type, brand);
}

class KitchenElectronics extends Appliances {
  final String model;

  KitchenElectronics(String type, String brand, String forKitchen, this.model)
      : super(brand, type, forKitchen);
}

class CoffeeMachine extends KitchenElectronics {
  final int size;
  CoffeeMachine(
    String type,
    String brand,
    String model,
    String forKitchen,
    this.size,
  ) : super(brand, model, type, forKitchen);
}

class CapsulCoffeMachine extends CoffeeMachine {
  final int pressure;
  CapsulCoffeMachine(
    String type,
    String brand,
    String model,
    String forKitchen,
    int size,
    this.pressure,
  ) : super(forKitchen, type, brand, model, size);
}

class Person {
  final String fullName;
  final int age;
  Person(this.fullName, this.age);

  String get move {
    return 'Такой-то $fullName идет';
  }

  String get talk {
    return ' Такой-то $fullName говорит';
  }

  @override
  String toString() {
    return '$move $talk';
  }
}

class Doctor extends Person {
  Doctor(
    String fullName,
    int age,
  ) : super(
          fullName,
          age,
        );
}

class Student extends Person {
  final DateTime yearOfAdmission;
  Student(
    String fullName,
    int age,
    this.yearOfAdmission,
  ) : super(fullName, age);
  int get currentCourse {
    return DateTime.now().year - yearOfAdmission.year;
  }

  @override
  String toString() {
    return ' Cтудент $fullName поступил в ${yearOfAdmission.year} году, сейчас он учится на $currentCourse курсе';
  }
}

void main() {
  final electronics = Electronics('for home', 'Samsung');
  final coffeeMachine = CoffeeMachine(
    'coffee machine',
    'Samsung',
    'for Kitchen ',
    'Top Model n. 10',
    12,
  );

  print(
      'Device ${coffeeMachine.type} ${coffeeMachine.forKitchen} brand is ${coffeeMachine.brand}, model is ${coffeeMachine.model}, size is ${coffeeMachine.size} sm2');
  final Person person = Person('Vlad', 24);
  print(person);

  final student = Student('Vlad', 24, DateTime(2015));

  print(student);
}

void main() {
  const volvo = Car(
    brand: 'volvo1',
    price: 400000,
    type: 'sedan',
    power: 15000,
    maxSpeed: 300,
  );
  volvo.typeOut();
  volvo.out();
  const den = Person(fullName: 'Roman', age: 32,);
  final realDen = den.copyWith(fullName: 'Денис Зайцев');
  realDen.printOut();
  den.printOut();
  den
    ..talk()
    ..printOut();

  final student = Student('Maxim', 'Shennikov', DateTime(2011));
  print(student.toString());
}
//1. Создайте цепочку реальных объектов наследования, длиною 5 объектов.
// У каждого объекта должны быть поля и каждый child должен добавлять новые поля

class Engine {
  final String type;

  void typeOut() {
    print('вид транспортного средства $type');
  }

  const Engine(this.type);
}

class Vehicles extends Engine {
  final int maxSpeed;

  const Vehicles(String type, this.maxSpeed) : super(type);
}

class AutoMechanicalVehicles extends Vehicles {
  final int power;

  const AutoMechanicalVehicles(String type, int maxSpeed, this.power)
      : super(type, maxSpeed);
}

class LandVehicles extends AutoMechanicalVehicles {
  final int wheelValues;

  const LandVehicles(super.type, super.maxSpeed, super.power, this.wheelValues);
}

class Car extends AutoMechanicalVehicles {
  final String? brand;
  final int? price;

  const Car({
    required String type,
    required int maxSpeed,
    required int power,
    this.brand,
    this.price,
  }) : super(type, maxSpeed, power);

  @override
  String toString() {
    return 'Car{brand: $brand, price: $price}';
  }

  void driving() {
    print('car is driving');
  }

  void out() {
    print('Brand $brand Prise is $price');
  }
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

  const Person.fromName(this.fullName) : age = 0;

  const Person.empty()
      : fullName = 'unknown',
        age = 0;

  void move() {
    print('$fullName идет гулять');
  }

  void talk() {
    print('$fullName ,общается');
  }

  void printOut() {
    print('имя $fullName возраст $age');
  }

  Person copyWith({
    String? fullName,
    int? age,
  }) {
    return Person(
      fullName: fullName ?? this.fullName,
      age: age ?? this.age,
    );
  }
}

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
class User {
  String name = '';
  String surname = '';

  @override
  String toString() {
    return 'Имя: $name, фамилия: $surname';
  }
}

class Student extends User {
  DateTime yearOfAdmission = DateTime.now();

  Student(String name, String surname, this.yearOfAdmission) {
    this.name = name;
    this.surname = surname;
  }

  int get currentCourse => DateTime.now().year - yearOfAdmission.year;

  @override
  String toString() {
    return '$name $surname, год поступления: ${yearOfAdmission.year}, курс: $currentCourse';
  }
}

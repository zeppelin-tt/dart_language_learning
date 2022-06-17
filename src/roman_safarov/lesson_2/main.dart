void main() {
  final Car volvo = Car('volvo1', 400000);
  volvo.driving();
  volvo
    ..brand = 'volvo'
    ..price = 5000000
    ..out();
  print(volvo.brand);
  final Car bmw = Car('bmw2', 25);
  bmw
    ..price = 6000000
    ..brand = 'BMW'
    ..out()
    ..driving();
  final Car mercedes = Car('mers', 400000);
    mercedes..brand = 'Mercedes'
    ..out()
    ..maxSpeed = 100
    ..power = 50
    ..type = 'sedan';
  print(bmw.runtimeType);
  print(mercedes.maxSpeed);
  mercedes.typeOut();

  final Person denn = Person('Roman', 32);
  denn.printOut();
  denn..age = 17
  ..fullName = 'Dennis'
  ..move()
  ..talk()
  ..printOut();

  final student = Student('Maxim', 'Shennikov', DateTime(2011));
  print(student.toString());
}
//1. Создайте цепочку реальных объектов наследования, длиною 5 объектов.
// У каждого объекта должны быть поля и каждый child должен добавлять новые поля

class Engine {
  String type = '';
  void typeOut() {
    print('вид транспортного средства $type');
  }

  Engine(this.type);
}

class Vehicles extends Engine {
  int maxSpeed;

  Vehicles(String type, this.maxSpeed) : super(type);
}

class AutoMechanicalVehicles extends Vehicles {
  int power;

  AutoMechanicalVehicles(String type, int maxSpeed, this.power)
      : super(type, maxSpeed);
}

class LandVehicles extends AutoMechanicalVehicles {
  int wheelValues = 0;

  LandVehicles(super.type, super.maxSpeed, super.power, this.wheelValues);
}

class Car extends AutoMechanicalVehicles {
  String brand = '';
  int price = 0;

  Car(this.brand, this.price) : super('', 0, 0);

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
  String fullName = '';

  int age = 0;

  Person(this.fullName, this.age);

  Person.personDefault();

  void move() {
    print('$fullName идет гулять');
  }

  void talk() {
    print('$fullName ,общается');
  }

  void printOut() {
    print('имя $fullName возраст $age');
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
    return '${super}, год поступления: ${yearOfAdmission.year}, курс: $currentCourse';
  }
}

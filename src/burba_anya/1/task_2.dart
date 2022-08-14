//1. Создайте цепочку реальных объектов наследования, длиною 5 объектов. +-
//У каждого объекта должны быть поля и каждый child должен добавлять новые поля.

//country-state-city-district-street

class Country {
  String name;
  String language;

  Country(this.name, this.language);
}

class State extends Country {
  int population;

  State(super.name, this.population, super.language);
}

class City extends State {
  bool capitalOfCountry;

  City(super.name, super.population, this.capitalOfCountry, super.language);
}

class District extends State {
  double square;

  District(super.name, super.population, super.language, this.square);
}

class Street extends Country {
  int howManyHouses;

  Street(super.name, super.language, this.howManyHouses);
}


//2. Создать класс Person, который содержит:
// переменные fullName, age;
// методы move() и talk(), в которых просто вывести на консоль сообщение -"Такой-то  Person говорит".
// Добавьте конструктор Person(fullName, age).
// Создайте два объект этого класса. Объект инициализируется конструктором Person(fullName, age).

class Person {
  String fullName;
  int age;

  Person(this.fullName, this.age);
  void move () {
    print('Двигается $fullName');
  }
  void talk () {
    print('Говорит $age - летний');
  }
}


//3. Реализуйте класс Student (Студент), который будет наследоваться от класса Person.
//Класс должен иметь следующие свойства:
//yearOfAdmission:DateTime (год поступления в вуз): инициализируется в конструкторе
//currentCourse:int (текущий курс): рассчитывается след. образом - из текущего года вычесть год поступления.
//чтобы получить настоящее время - DateTime.now()
//чтобы получить годы из DateTime, воспользуйтесь свойством DateTime.year
//Класс должен иметь метод toString() , с помощью которого можно вывести:
//имя и фамилию студента - используя родительскую реализацию toString
//год поступления
//текущий курс

class Student extends Person {
  int yearOfAdmission;
  int currentCourse;

  Student(super.fullName, super.age, this.yearOfAdmission) : currentCourse = DateTime.now().year - yearOfAdmission +1;

  @override
  String toString() {
    return 'Студент: $fullName, возраст: $age, год поступления: $yearOfAdmission, курс: $currentCourse.';
  }
}
void main () {
  final country = Country('Germany','german');
  final state = State('Berlin',6200000, 'german');
  final city = City('Berlin', 3700000, true, 'german');
  final district = District('Pankow', 55785, 'german', 5.66);
  final street = Street('Pankower street','german',37);
  print(country.language);
  print(state.population);
  print(city.population);
  print('${district.square} km^2');
  print(street.howManyHouses);
  final person1 = Person('Яковлева Мария Викторовна', 22);
  final person2 = Person('Самуйлов Даниил Яковлевич', 15);
  person1.move();
  person2.talk();
  final student1 = Student('Яковлева Мария Викторовна', 22, 2019);
  final student2 = Student('Крючкова Василиса Михайловна', 20, 2021);
  print(student1.toString());
}

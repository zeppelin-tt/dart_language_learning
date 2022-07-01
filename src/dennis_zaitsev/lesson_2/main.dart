void main(){
  final Human romanSafarov = Human()
  ..name = 'Роман'
  ..age = 32
  ..info();

  final PunkRockDrummer alexSidyakin = PunkRockDrummer()
  ..name = 'Александр'
  ..age = 25
  ..artPseudonym = 'СЕДЛО'
  ..instrument = 'Барабанщик'
  ..styleOfDrumming = 'Рок'
  ..bandName = 'Kailess'
  ..info();
  print('Псевдоним артиста: ${alexSidyakin.artPseudonym}');
  print('Музыкант: ${alexSidyakin.instrument}');
  print('Стиль игры: ${alexSidyakin.styleOfDrumming}');
  print('Играет в группе: ${alexSidyakin.bandName}');

  final Person roman = Person('Роман Сафаров', 32);
  final Person denis  = Person('Денис Зайцев', 37);
  roman.move();
  denis.talk();

  final Student anton = Student('Антон', 'Шипучкин', DateTime(2015));
  print(anton.toString());
}
class Human{
  String name = '';
  int age = 0;
  void info(){
    print('Имя: $name, Возраст: $age');
  }
}
class Artist extends Human{
  String artPseudonym = '';
}
class Musician extends Artist{
  String instrument = '';
}
class Drummer extends Musician{
  String styleOfDrumming = '';
}
class PunkRockDrummer extends Drummer{
  String bandName = '';
  void drummerInfo(){
    print('$name играет в панк-группе и носит прическу ирокез');
  }
}

// 2. Создать класс Person, который содержит:
// переменные fullName, age;
// методы move() и talk(), в которых просто вывести на консоль сообщение -"Такой-то Person говорит".
// Добавьте конструктор Person(fullName, age).
// Создайте два объекта этого класса. Объект инициализируется конструктором Person(fullName, age).
class Person{
  String fullName = '';
  int age = 0;
  void move(){
    print('$fullName гуляет');
  }
  void talk(){
    print('$fullName говорит');
  }
  Person(this.fullName, this.age);
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

class User{
  String name = '';
  String surName = '';

  @override
  String toString() {
    return 'User{name: $name, surName: $surName}';
  }
}
class Student extends User {
  DateTime yearOfAdmission = DateTime.now();
  Student(String name, String surName, this.yearOfAdmission){
    this.name = name;
    this.surName = surName;
  }
  int get course => DateTime.now().year - yearOfAdmission.year;
  @override
  String toString() {
    return '$name $surName: Год поступления: ${yearOfAdmission.year}, курс: $course';
  }
}

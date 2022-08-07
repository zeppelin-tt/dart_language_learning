void main() {
  print('Задание 1:');
  final beatifulOwl = HornedVagueness(25.5, true, true, false, 'Россия');
  print(beatifulOwl);

  print('\nЗадание 2:');
  final maksim = Person('Максим Павловский', 25);
  Person kirill = Person('Кирилл Ходаковский', 20);

  maksim.move();
  kirill.talk();

  print('\nЗадание 3:');
  final max = Student('Максим', 23, DateTime(2019));
  print(max);
}

/*
1. Создайте цепочку реальных объектов наследования, длиною 5 объектов.
У каждого объекта должны быть поля и каждый child должен добавлять новые поля.
*/

// chordal (хордовые) -> birds -> owl-like (совообразные) -> owls (совиные) -> horned vagueness (рогатая неясыть)
class Chordal {
  double lengthOfChord;
  String type = 'Хордовые';

  Chordal(this.lengthOfChord);
}

class Birds extends Chordal {
  bool canFly;

  Birds(lengthOfChord, this.canFly) : super(lengthOfChord);
}

class OwlLike extends Birds {
  bool bigHead;
  bool smallEyes;
  String eyeDirection = 'Прямое';

  OwlLike(lengthOfChord, canFly, this.bigHead, this.smallEyes) : super(lengthOfChord, canFly);
}

class Owls extends OwlLike {
  bool huntsAtNight = true;
  String habitat;

  Owls(lengthOfChord, canFly, bigHead, smallEyes, this.habitat) : super (lengthOfChord, canFly, bigHead, smallEyes);
}

class HornedVagueness extends Owls {
  String colorOfEars = 'Белый';
  String kind = 'Неясыть Рогатая';

  HornedVagueness(lengthOfChord, canFly, bigHead, smallEyes, habitat)
      : super (lengthOfChord, canFly, bigHead, smallEyes, habitat);

  @override
  String toString() {
    return 'Вид: $kind, \nТип: $type, \nДлина хорды $lengthOfChordсм, \nУмеет летать: $canFly, \nБольшая голова: $bigHead, \nМаленькие глаза: $smallEyes, \nНаправление взгляда: $eyeDirection, \nОхотится ночью: $huntsAtNight, \nМесто обитания: $habitat, \nЦвет ушей: $colorOfEars';
  }
}

/*
2. Создать класс Person, который содержит:
переменные fullName, age;
методы move() и talk(), в которых просто вывести на консоль сообщение -"Такой-то  Person говорит".
Добавьте конструктор Person(fullName, age).
Создайте два объект этого класса. Объект инициализируется конструктором Person(fullName, age).
*/

class Person {
  String fullName;
  int age;

  void move() {
    print('$fullName ходит');
  }

  void talk() {
    print('$fullName говорит - мне $age лет');
  }

  Person(this.fullName, this.age);
}

/*
3. Реализуйте класс Student (Студент), который будет наследоваться от класса User.
Класс должен иметь следующие свойства:

yearOfAdmission:DateTime (год поступления в вуз): инициализируется в конструкторе
currentCourse:int (текущий курс): рассчитывается след. образом -
из текущего года вычесть год поступления.
чтобы получить настоящее время - DateTime.now()
чтобы получить годы из DateTime, воспользуйтесь свойством DateTime.year
Класс должен иметь метод toString() , с помощью которого можно вывести:

имя и фамилию студента - используя родительскую реализацию toString
год поступления
текущий курс
*/

class User {
  String fullName;
  int age;

  User(this.fullName, this.age);
}

class Student extends User {
  DateTime yearOfAdmission;

  Student(fullName, age, this.yearOfAdmission) : super(fullName, age);

  int get currentCourse {
    return DateTime.now().year - yearOfAdmission.year;
  }

  @override
  toString() {
    return '$fullName поступил в ${yearOfAdmission.year} году, сейчас на $currentCourse курсе.';
  }
}

// Задачи
// 1. Создайте цепочку реальных объектов наследования, длиною 5 объектов. У каждого объекта должны быть поля и каждый child должен добавлять новые поля.
//
class Human{
  String live = 'carbon based';

  void breathe(){
    print("Breathes");
  }

  void speak(){
    print("Speaks");
  }
}

class Man extends Human {
  static const  String voice = "deep voice";
  @override
  void speak(){
    print("Speaks in a $voice");
  }
}

class Russian_man extends Man{

  String language = "Russian";
  @override
  void speak(){
    super.speak();
    print("Speaks $language");
  }
}

class Petersburger extends Russian_man{

  String citizenship = "Lives in Saint-Petersburg";
}

class KoruskaEater extends Petersburger{

  void question(){
    print("How much is the korushka?\n Nana na na na!!!\n Na\nNaNa\nNa");
  }
}


// 2. Создать класс Person, который содержит:
// переменные fullName, age;
// методы move() и talk(), в которых просто вывести на консоль сообщение -"Такой-то  Person говорит".
// Добавьте конструктор Person(fullName, age).
// Создайте два объекта этого класса. Один объект инициализируется конструктором Person(), другой - Person(fullName, age).
//


class Person{

  String fullName=" ";
  int age=0;
//квадратные скобки делают указание атрибутов необязательным необязательными
  Person([this.fullName = 'Someone', this.age = 0]);

  void move(){
    print("$fullName walks");
  }

  void talk(){
    print ("$fullName talks");
  }
}
// 3. Реализуйте класс Student (Студент), который будет наследоваться от класса User.
// Класс должен иметь следующие свойства:
class User{
  String name = "";
  String second_name = "";
  User(this.name, this.second_name);

  void FIO(){
    print("$name");
    print("$second_name");
  }
}

class Student extends User{
  int yearOfAdmission = 0;
  int currentCourse = 0;

  Student(String name, String second_name, int yearOfAdmission): super (name, second_name ){
    this.yearOfAdmission = yearOfAdmission;
    this.currentCourse = DateTime.now().year - yearOfAdmission;
  }
  @override
  void FIO(){
    super.FIO();
    print("Год поступления: $yearOfAdmission");
    print("Курс: $currentCourse");
  }
}

// yearOfAdmission:DateTime (год поступления в вуз): инициализируется в конструкторе
// currentCourse:int (текущий курс): рассчитывается след. образом - из текущего года вычесть год поступления.
// чтобы получить настоящее время - DateTime.now()
// чтобы получить годы из DateTime, воспользуйтесь свойством DateTime.year
// Класс должен иметь метод toString() , с помощью которого можно вывести:
//
// имя и фамилию студента - используя родительскую реализацию toString
// год поступления
// текущий курс

void main(){

  KoruskaEater ivan = KoruskaEater();
  print(ivan.live);
  ivan.speak();
  ivan.question();

  Person mysterious_guest = Person();
  mysterious_guest.move();
  mysterious_guest.talk();
  print(mysterious_guest.age);

  Person jack = Person("Jack", 35);
  jack.move();
  jack.talk();
  print(jack.age);

  Student student1 = Student("Elvis", "Jackson", 2020);
  student1.FIO();
}




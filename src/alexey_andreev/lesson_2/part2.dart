class Person {
  String fullName;
  int age;

  Person(this.fullName, this.age);

  void talk(){
    print('$fullName говорит: мне $age лет!');
  }

  void move(){
    print('$fullName еще что-то говорит.');
  }
}

class Student extends Person{

  final DateTime yearOfAdmission;

  Student(fullName, age, this.yearOfAdmission) : super(fullName, age);

  int get currentCourse{
    return DateTime.now().year - yearOfAdmission.year;
  }

  toString() {
    return '$fullName поступил в $yearOfAdmission.year году, сейчас на $currentCourse курсе.';
  }
}

void main(){

/*  в задании: "Один объект инициализируется конструктором Person(), другой - Person(fullName, age).""
    но при этом на metaint написано: "Следует учитывать, что если мы определяем в классе свои конструкторы,
    как в случае выше, то конструктор по умолчанию мы уже использовать не сможем."
    то есть, код ниже работать не будет... И как тогда инициализировать конструктором Person()?

  Person mike = Person();
  mike.fullName = 'Майк';
  mike.age = 35;
  mike.talk();
*/

  Person john = Person('Джон', 25);
  john.talk();
  john.move();

  Student bob = Student('Боб', 24, DateTime(2018));
  print(bob);
}
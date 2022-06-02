class Person {
  String fullName;
  int age;

  Person.fromNameAndYear(this.fullName, this.age);

  void talk(){
    print('$fullName говорит: мне $age лет!');
  }

  void move(){
    print('$fullName еще что-то говорит.');
  }
}

class Student extends Person{

  final DateTime yearOfAdmission;

  Student(fullName, age, this.yearOfAdmission) : super.fromNameAndYear(fullName, age);

  int get currentCourse{
    return DateTime.now().year - yearOfAdmission.year;
  }

  @override
  toString() {
    return '$fullName поступил в ${yearOfAdmission.year} году, сейчас на $currentCourse курсе.';
  }
}

void main(){

  Person john = Person.fromNameAndYear('Джон', 25);
  john.talk();
  john.move();

  Student bob = Student('Боб', 24, DateTime(2018, 12, 26));
  print(bob);
}
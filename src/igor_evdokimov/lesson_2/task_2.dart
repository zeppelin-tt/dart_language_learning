void main() {
  final maxim = Person('Щенников Максим', 35);
  final igor = Person('Евдокимов Игорь', 38);
  final student1 = Student(2020, 'Василий Иванович', 25);

  maxim.talk('непонятные слова');
  igor.move('плакать в подушку');
  student1.tostring();
}

class Person {
  String fullName;
  int age;

  Person(this.fullName, this.age);

  void move(String destination) {
    return print('$fullName идёт $destination.');
  }

  void talk(String words) {
    return print('$fullName говорит $words.');
  }
}

class Student extends Person {
  int yearOfAdmission;
  int currentCourse;
  Student(this.yearOfAdmission, super.fullName, super.age)
      : currentCourse = DateTime.now().year - yearOfAdmission;

  void tostring() {
    return print(
        'Студент $fullName поступил в $yearOfAdmission году и учится на $currentCourse курсе.');
  }
}
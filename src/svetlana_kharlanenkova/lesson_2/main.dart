void main() {
  final person = Person('Camel Brown', 100);
  final user = User('Llama White', 70);
  final student = Student('German Alpaca bananahammock', 55, DateTime(2006, 8, 1));
  print(student);
}

class Person {
  String fullName;
  int age;

  Person(this.fullName, this.age);

  void move() {}
  void talk() {
    print("Такой-то  Person говорит");
  }
}

class User extends Person {
  User(
    String fullName,
    int age,
  ) : super(
          fullName,
          age,
        );
}

class Student extends User {
  final DateTime yearOfAdmission;

  Student(
    String fullName,
    int age,
    this.yearOfAdmission,
  ) : super(
          fullName,
          age,
        );
  int get currentCourse {
    return DateTime.now().year - yearOfAdmission.year;
  }

  toString() {
    return '$fullName ${yearOfAdmission.year} $currentCourse';
  }
}

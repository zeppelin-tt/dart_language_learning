void main() {
  final Person boss = Person('Иван Иванович', 45);
  final Person chief = Person('Петр Петрович', 42);
  boss.talk();
  chief.talk();
}

class Person {
  String fullName = 'undefined';
  int age = 0;

  Person(String a, int b) {
    fullName = a;
    age = b;
  }

  void move() {}

  void talk() {
    print('$fullName говорит');
  }
}

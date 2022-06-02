class Dinosaur {
  String name;
  String color;
  String type;

  Dinosaur(this.name, this.color, this.type);
}

class Theropoda extends Dinosaur {
  final teeth;
  Theropoda(
    name,
    color,
    type,
  ) : teeth = 'sharp',super(
          name,
          color,
          type,
        );
}

class Coelurosauria extends Theropoda {
  bool hasFeathers;
  Coelurosauria(
    name,
    color,
    type,
    this.hasFeathers,
  ) : super(
          name,
          color,
          type,
        );
}

class Maniraptora extends Coelurosauria {
  bool hasBeak;
  Maniraptora(
    name,
    color,
    type,
    hasFeathers,
    this.hasBeak,
  ) : super(
          name,
          color,
          type,
          hasFeathers = true,
        );
}

class Dromaeosauridae extends Maniraptora {
  bool hasBigClaw;
  Dromaeosauridae(
    name,
    color,
    type,
    hasFeathers,
    hasBeak,
    this.hasBigClaw,
  ) : super(
          name,
          color,
          type,
          hasFeathers = true,
          hasBeak = false,
        );
}

void main() {
  final person = Person('Camel Brown', 100);
  final user = User('Llama White', 70);
  final student =
      Student('German Alpaca bananahammock', 55, DateTime(2006, 8, 1));
  print(student);

  final dinosaur = Dinosaur('dino', 'green', 'unknown');
  final tRex = Theropoda('evil', 'brown', 'carnivore');
  final therizinosaurus = Coelurosauria('kind', 'light brown', 'herbivore', true);
  final oviraptor = Maniraptora('ovi', 'pink', 'carnivore', true, true);
  final deinonychus = Dromaeosauridae('extra evil', 'grey', 'carnivore', true, true, true);

  print(dinosaur);
  print(tRex);
  print(therizinosaurus);
  print(oviraptor);
  print(deinonychus);
}

class Person {
  String fullName;
  int age;

  Person(this.fullName, this.age);

  void move() {}
  void talk() {
    print("Camel Brown говорит");
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

  @override
  toString() {
    return '$fullName ${yearOfAdmission.year} $currentCourse';
  }
}

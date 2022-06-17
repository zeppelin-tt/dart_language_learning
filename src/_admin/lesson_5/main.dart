void main() {
  final map = <int, String>{
    1: 'String_1',
    2: 'String_2',
    3: 'String_3',
    4: 'String_4',
    5: 'String_5',
    6: 'String_5',
  };

  final set = <int>{1, 2, 3, 4, 5, 6};

  print('String'[2]);

  final list = <Person>[
    const Person(height: 165, shoulderWidth: 30, name: 'Maxim', gender: Gender.male),
    const Person(height: 175, shoulderWidth: 33, name: 'Angelina', gender: Gender.female),
    const Person(height: 185, shoulderWidth: 40, name: 'Isabel', gender: Gender.female),
    const Person(height: 155, shoulderWidth: 32, name: 'Artem', gender: Gender.male),
  ];

  final result = list.map((e) => e.name);
  final list2 = List.of(result);
  final list3 = List.generate(10, (index) => index * 2);
  final list4 = List.filled(4, 2);
  print('2 ' * 4);
}

int personHeightComparator(Person a, Person b) {
  if (a.height > b.height) {
    return 1;
  }
  if (a.height < b.height) {
    return -1;
  }
  return 0;
}

class Person implements Comparable<Person> {
  final int height;
  final int shoulderWidth;
  final String name;
  final Gender gender;

  const Person({
    required this.height,
    required this.shoulderWidth,
    required this.name,
    required this.gender,
  });

  bool get isMale => gender == Gender.male;

  @override
  String toString() {
    return 'name: $name';
  }

  @override
  int compareTo(Person other) {
    if (shoulderWidth > other.shoulderWidth) {
      return -1;
    }
    if (shoulderWidth < other.shoulderWidth) {
      return 1;
    }
    return 0;
  }
}

enum Gender { male, female }

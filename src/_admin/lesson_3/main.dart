void main() {
  const animal1 = Animal(45, name: 'Dog');
  final a = animal1.toString();

  final cat1 = Cat(size: 10, name: 'Peter');
  final cat2 = Cat(size: 5, name: 'Vasya');
  final dog = Dog(size: 15, name: 'Sharik');
  final sergey = Sergey<Cat, Dog, String>()..handleSomething(object1: cat1);
}

class Sergey<T, B, C> {
  void handleSomething({T? object1, B? object2, C? object3}) {
    print('');
  }
}

abstract class Jumpable {
  void jump();
}

mixin NightVision {
  void switchOnNightVision() {
   print('night vision switched on');
  }
}



class Dog extends Animal with NightVision implements Jumpable {

  Dog({
    required String name,
    required int size,
  }) : super(size, name: name);

  @override
  void showVoice() {
    print('$name sad Woof');
  }

  @override
  void jump() {
    print('');
  }
}

class Cat extends Animal {

  Cat({
    required String name,
    required int size,
  }) : super(size, name: name);

  @override
  void showVoice() {
    print('$name sad Mey');
  }
}

class Animal {
  final String? name;
  final int size;

  const Animal(
    this.size, {
    this.name,
  });

  void showVoice() {
    print('$name sad');
  }
}

class Picture {}

class Size {
  final double height;
  final double width;

  const Size({
    required this.height,
    required this.width,
  });
}

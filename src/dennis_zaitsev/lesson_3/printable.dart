class Printable {
  void printOut() {
    print('Я книга');
  }
}

class Book implements Printable {
  String name = '';

  @override
  void printOut() {
    print(name);
  }
}

class Magazine implements Printable {
  String name = '';

  @override
  void printOut() {
    print(name);
  }
}

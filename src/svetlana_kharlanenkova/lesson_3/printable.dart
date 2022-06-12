const _print = print;

void main() {
  final book = Book('Norwegian wood');
  final book2 = Book('Naked lunch');
  final magazine = Magazine('Playboy');
  final magazine2 = Magazine('National geographic');
  book.print();
  book2.print();
  magazine.print();
  magazine2.print();
  book.burn();
  book2.burn();
  magazine.burn();
  magazine2.burn();
}

abstract class Printable {
  void print();
}

mixin Burnable {
  String name = '';
  void burn() {
    _print('$name is burning');
  }
}

class Book with Burnable implements Printable {
  String name;

  Book(this.name);

  @override
  void print() {
    _print(name);
  }
}

class Magazine with Burnable implements Printable {
  String name;

  Magazine(this.name);

  @override
  void print() {
    _print(name);
  }
}

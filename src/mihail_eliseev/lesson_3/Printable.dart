import 'Burnable.dart';

class Printable {
  void display() {}
}

class Book with Burnable implements Printable {
  String name;

  Book(this.name);

  void display() {
    print(name);
    burn();
  }
}

class Magazine with Burnable implements Printable {
  String name;

  Magazine(this.name);

  void display() {
    print(name);
    burn();
  }
}

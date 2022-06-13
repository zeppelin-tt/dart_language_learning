import 'burnable.dart';

void main() {
  Book('Hamlet').display();

  Book('Romeo and Juliet').display();

  Magazine('Playboy').display();

  Magazine('Rolling Stone').display();
}

class Printable {
  void display() {}
}

class Book with Burnable implements Printable {
  String name;

  Book(this.name);

  @override
  void display() {
    print(name);
    burn();
  }
}

class Magazine with Burnable implements Printable {
  String name;

  Magazine(this.name);

  @override
  void display() {
    print(name);
    burn();
  }
}

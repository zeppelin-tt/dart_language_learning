import '../interface/printable.dart';

class Book implements Printable {
  String name;

  Book(this.name);

  @override
  void printName() {
    print('Бестселлер года - $name');
  }
}

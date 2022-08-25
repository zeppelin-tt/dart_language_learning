import 'burnable.dart';
import 'printable.dart';

class Book with Burnable implements Printable {
  final String name;

  Book(this.name);

  @override
  void printable() {
    print(name);
  }
}

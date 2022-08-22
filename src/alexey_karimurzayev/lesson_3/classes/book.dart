import '../interface/printable.dart';
import '../mixin/burnable.dart';

class Book with Burnable implements Printable {
  final String name;

  Book(this.name);

  @override
  void printName() {
    print('Бестселлер года - $name');
  }
}

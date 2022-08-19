import '../main.dart';
import 'printable.dart';

class Book with Burnable implements Printable {
  final String name;

  Book({required this.name});

  @override
  printable(value) {
    print(value);
  }
}

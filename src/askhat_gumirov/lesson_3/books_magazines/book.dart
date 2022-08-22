import '../main.dart';
import 'printable.dart';

class Book with Burnable implements Printable {
  final String name;

  Book({required this.name});

  @override
  String printable(String value) {
    print(value);
    return value;
  }
}

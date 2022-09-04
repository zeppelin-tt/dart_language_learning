import '../burnable.dart';
import 'printable.dart';

class Book with Burnable implements Printable {
  final String name;

  Book({required this.name});

  @override
  void printTitle() {
    print(name);
  }


}

import 'burnable.dart';
import 'printable.dart';

class Magazine with Burnable implements Printable {
  final String name;

  Magazine(this.name);

  @override
  void printable() {
    print(name);
  }
}

import 'burnable.dart';
import 'printable.dart';

class Magazine with Burnable implements Printable {
  String name;

  Magazine(this.name);

  @override
  void print() {
    newPrint(name);
  }
}

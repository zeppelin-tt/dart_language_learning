import 'burnable.dart';
import 'printable.dart';

class Book with Burnable implements Printable {
  // ignore: overridden_fields, annotate_overrides
  final String name;

  Book(this.name);

  @override
  void print() {
    corePrint('Книга - $name');
  }
}

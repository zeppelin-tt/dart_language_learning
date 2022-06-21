import 'burnable.dart';
import 'printable.dart';

class Magazine with Burnable implements Printable {
  // ignore: overridden_fields, annotate_overrides
  final String name;

  Magazine(this.name);

  @override
  void print() {
    corePrint('Журнал - $name');
  }
}

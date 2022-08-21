import 'printable.dart';

mixin Burnable {
  final String name = '';
  void burn() {
    newPrint('$name Горит!');
  }
}

import '../interface/printable.dart';

class Magazine implements Printable {
  String name;

  Magazine(this.name);

  @override
  void printName() {
    print('Журнал $name больше не выпускается');
  }
}

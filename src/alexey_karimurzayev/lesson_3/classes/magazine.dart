import '../interface/printable.dart';
import '../mixin/burnable.dart';

class Magazine with Burnable implements Printable {
  String name;

  Magazine(this.name);

  @override
  void printName() {
    print('Журнал $name больше не выпускается');
    burn();
  }
}

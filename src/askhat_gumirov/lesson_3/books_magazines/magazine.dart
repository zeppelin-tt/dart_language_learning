import '../burnable.dart';
import 'printable.dart';

class Magazine with Burnable implements Printable {
  final String name;
  Magazine({required this.name});

  @override
  void printTitle() {
    print(name);
  }

}

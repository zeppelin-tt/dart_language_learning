import '../main.dart';
import 'printable.dart';

class Magazine with Burnable implements Printable {
  final String name;
  Magazine({required this.name});

  @override
  String printable(String value) {
    print(value);
    return value;
  }
}

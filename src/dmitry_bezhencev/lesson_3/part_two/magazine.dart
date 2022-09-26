import '../part_three/burnable.dart';
import 'part_two.dart';

// 2.3 Создать класс Magazine с полем name, реализующий интерфейс Printable.
//(писать в консоль имя журнала)
// 2.4 Создать по 2 экземпляра книг и журналов.
// 3.2 Добавить этот миксин к классам Book и Magazine из второго задания

const String idmagazine1 = 'Smash Magazine';
const String idmagazine2 = 'Maksim';

class Magazine with Burnable implements Printable {
  const Magazine({
    this.name = idmagazine1,
  });

  final String name;

  @override
  void printBook() {
    print(name);
  }

  @override
  void burn() {
    print('$idmagazine1 Горит');
  }
}

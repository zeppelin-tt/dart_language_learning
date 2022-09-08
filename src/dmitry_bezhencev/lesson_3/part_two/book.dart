import '../part_three/burnable.dart';
import 'printable.dart';

// 2.2 Создать класс Book с полем name, реализующий интерфейс Printable.
//(писать в консоль имя книги)
// 2.4 Создать по 2 экземпляра книг и журналов.
// 3.2 Добавить этот миксин к классам Book и Magazine из второго задания

const String idbook1 = 'Теренс Джон Пратчетт К оружию! К оружию!';
const String idbook2 = 'Незнайка на луне';

class Book with Burnable implements Printable {
  const Book({
    this.name = idbook1,
  });

  final String name;

  @override
  void printBook() {
    print(name);
  }

  @override
  void burn() {
    print('$idbook1 Горит');
  }
}

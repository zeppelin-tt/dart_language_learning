import 'BelarusianHen.dart';
import 'GermanHen.dart';
import 'MoldovanHen.dart';
import 'Printable.dart';
import 'RussianHen.dart';

void main() {
  final russianHen = RussianHen();
  final germanHen = GermanHen();
  final moldovanHen = MoldovanHen();
  final belarusianHen = BelarusianHen();

  print(russianHen.description);
  print(germanHen.description);
  print(moldovanHen.description);
  print(belarusianHen.description);

  Book('Мифы ООП').display();
  Book('Сказки о Флаттере').display();
  Magazine('Програмирование и жизнь').display();
  Magazine('Жизнь без програмирования').display();
}

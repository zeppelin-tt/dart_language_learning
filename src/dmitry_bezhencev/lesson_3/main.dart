// 1.9. Все созданные вами классы должны быть в отдельных файлах

import 'classes_hen/classes_hen.dart';
import 'part_two/part_two.dart';

void main() {
  print(RussianHen());
  print(BelarusianHen());
  print(MoldovanHen());
  print(GermanHen());
  final hen = HenFactory(CountryHen.Russia);
  print(hen.getHen);
  const Book().printBook();
  const Magazine().printBook();
  const Magazine().burn();
}

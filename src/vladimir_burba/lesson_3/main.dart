import 'task_1/hen_factory.dart';
import 'tasks_2_3/book.dart';
import 'tasks_2_3/magazine.dart';

void main() {
  const country = 'Россия';
  final hen = HenFactory(country).getHen;
  print(hen.getDescription);
  Book('Глубина в небе').print();
  Book('Черный лебедь. Под знаком непредсказуемости').print();
  Magazine('Сад и огород').print();
  Magazine('Naked Science').print();
}
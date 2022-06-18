// 1. В переменных q и w хранятся два натуральных числа. Создайте функцию,
// выводящую на экран результат деления q на w с остатком.
// Пример вывода программы (для случая, когда в q хранится 21, а в w хранится 8)

void main() {
  const q = 8;
  const w = 2;
  dividerWithDecimalPart(q, w);
}

void dividerWithDecimalPart(int q, int w) {
  final result = q ~/ w;
  final decimal = q - result * w;
  print('для случая, когда в q хранится $q, а в w хранится $w, результат: $result, остаток: $decimal');
  1. Создайте цепочку реальных объектов наследования, длиною 5 объектов. У каждого объекта должны быть поля и каждый child должен добавлять новые поля.
  class person Colledge{
  String name;




}
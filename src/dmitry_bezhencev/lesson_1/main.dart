const int q = 21;
const int w = 8;
const int n = 46;
const double d = 3.8;
const int i = 372;

void main() {
  one(q, w);
  two(n);
  three(d);
  four(i);
}

// 1. В переменных q и w хранятся два натуральных числа. Создайте функцию,
//    выводящую на экран результат деления q на w с остатком.
//    Пример вывода программы (для случая, когда в q хранится 21, а в w хранится 8)
void one(int q, int w) => print(q ~/ w);

// 2. В переменной n хранится натуральное двузначное число. Создайте функцию,
//    вычисляющую и выводящую на экран сумму цифр числа n.
void two(int n) {
  final int numberOne = (n ~/ 10) * 10;
  final double numberTwo = n % 10;
  print('$numberOne + $numberTwo');
}

// 3. В переменной n хранится вещественное число с ненулевой дробной частью. Создайте функцию,
//    округляющую число n до ближайшего целого и выводящую результат на экран.
void three(double d) => print('${d.roundToDouble()}');

// 4. В переменной n хранится натуральное трёхзначное число. Создайте функцию,
//    вычисляющую и выводящую на экран сумму цифр числа n.
void four(int i) {
  final int numberOne = (i ~/ 100) * 100;
  final int numberTwo = (i - i % 10) - (i ~/ 100) * 100;
  final int numberThree = i % 10;
  print('$numberOne + $numberTwo + $numberThree');
}

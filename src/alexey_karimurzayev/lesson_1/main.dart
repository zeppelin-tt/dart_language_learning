// 1. В переменных q и w хранятся два натуральных числа. Создайте функцию,
// выводящую на экран результат деления q на w с остатком.
// Пример вывода программы (для случая, когда в q хранится 21, а в w хранится 8)
double division(int q, int w) {
  return q / w;
}

// 2. В переменной n хранится натуральное двузначное число. Создайте функцию,
// вычисляющую и выводящую на экран сумму цифр числа n.

int sumOfTwoNumbers(int n) {
  final int a = n ~/ 10;
  final int b = n % 10;
  return a + b;
}

// 3. В переменной n хранится вещественное число с ненулевой дробной частью. Создайте функцию,
// округляющую число n до ближайшего целого и выводящую результат на экран.

int roundUp(double n) {
  return n.round();
}

// 4. В переменной n хранится натуральное трёхзначное число. Создайте функцию,
// вычисляющую и выводящую на экран сумму цифр числа n.

void sumOfThreeNumbers(int n) {

  if (n >= 100 && n <=999) {
    final int a = n ~/ 100;
    final int b = n % 100 ~/ 10;
    final int c = n % 10;
    return print(a + b + c);
  } else {
    return print('Введите 3-х значное число!');
  }
}

void main() {
  // Задание № 1
  print(division(21, 8));
  // Задание № 2
  print(sumOfTwoNumbers(39));
  // Задание № 3
  print(roundUp(7.8));
  // Задание № 4
  // print(sumOfThreeNumbers(299));
  // print(sumOfThreeNumbers(2941));
  sumOfThreeNumbers(99);
  sumOfThreeNumbers(234);
}
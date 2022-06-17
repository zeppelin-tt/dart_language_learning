void main() {
  final modulo = divisionToIntegerAndModulo(21, 8);
  print('остаток от деления 21 на 8 - $modulo ');

  divisionToIntegerAndModulo2(17, 8);
  sumNumbers(13);

  final modulo2 = divisionToIntegerAndModulo(17, 4);
  print(' остаток от деления 17 на 4- $modulo2');



  rounder(3.1416894);

  sumNumbers3(100);
  sumNumbers3(879);
  sumNumbers3(289);
  sumNumbers3(2353);
}
//1. В переменных q и w хранятся два натуральных числа. Создайте функцию,
//      выводящую на экран результат деления q на w с остатком.
//    Пример вывода программы (для случая, когда в q хранится 21, а в w хранится 8)

int divisionToIntegerAndModulo(int q, int w) {
  //через return
  return q % w;
}

void divisionToIntegerAndModulo2(int q, int w) {
  //с  выводом текста и результата на экран
  final divisionToInt = q ~/ w;
  final remainder = q % w;
  print('$q / $w = $divisionToInt, остаток от деления $q на $w равен $remainder');
}
// 2. В переменной n хранится натуральное двузначное число. Создайте функцию,
// вычисляющую и выводящую на экран сумму цифр числа n.

//лично мне на данном этапе удобнее делать void фукнции выводящую на экран сразу
// и результат и текст, но для восприятия дублирую функцию в return
//но можно будет делать функции через @override toString
void sumNumbers(int a) {
  if (a >= 10 && a < 100) {
    final firstNumber = a ~/ 10;
    final secondNumber = a % 10;
    final sum = firstNumber + secondNumber;
    print('сумма чисел числа $a равна $sum');
  } else {
    print('число должно быть двузначным');
  }
}

//3. В переменной n хранится вещественное число с ненулевой дробной частью. Создайте функцию,
//      округляющую число n до ближайшего целого и выводящую результат на экран.
void rounder(final x) {
  final y = x.round();
  print('$x округляем до $y');
}

//4. В переменной n хранится натуральное трёхзначное число. Создайте функцию,
//      вычисляющую и выводящую на экран сумму цифр числа n.
void sumNumbers3(int a) {
  if ((a >= 100) && (a < 1000)) {
    final firstNumber = a ~/ 100;
    final secondNumber = a % 100 ~/ 10;
    final thirdNumber = a % 10;
    final sum = firstNumber + secondNumber + thirdNumber;
    print('сумма чисел числа $a равна $sum');
  } else {
    print('число $a должно быть трехзначным');
  }
}

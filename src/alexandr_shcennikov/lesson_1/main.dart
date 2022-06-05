void main() {
  remainderOfDivision(11, 3);
  const twoDigitNumber = 88;
  final sumOfNumbers = getSumOfNumbers (twoDigitNumber);
  print ('сумма знаков двузначного числа $twoDigitNumber: $sumOfNumbers');
}

/// В переменных q и w хранятся два натуральных числа. Создайте функцию,
/// выводящую на экран результат деления q на w с остатком.
/// Пример вывода программы (для случая, когда в q хранится 21, а в w хранится 8)
void remainderOfDivision(int q, int w) {
  final integerPart = q ~/ w;
  final decimalPart = q % w;
  print('целое число $integerPart, остаток от дления $decimalPart');
}

///В переменной n хранится натуральное двузначное число. Создайте функцию,
///вычисляющую и выводящую на экран сумму цифр числа n.
int getSumOfNumbers(int n) {
  final numberOne = n ~/ 10;
  //final numberTwo = n % 10;
  final numberTwo2 = n - numberOne * 10;
  return numberOne + numberTwo2;

  //В переменной n хранится вещественное число с ненулевой дробной частью. Создайте функцию,
  //округляющую число n до ближайшего целого и выводящую результат на экран.
}

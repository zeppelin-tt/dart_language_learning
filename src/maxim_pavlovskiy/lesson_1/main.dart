void main() {
  divisionWithRemainder(21, 8);
  sumOfDigitsOfTwoDigitNumber(25);
  roundingToNearestInteger(25.64);
  sumOfDigitsOfThreeDigitNumber(345);
}
/*
1. В переменных q и w хранятся два натуральных числа.
Создайте функцию, выводящую на экран результат деления q на w с остатком.
Пример вывода программы (для случая, когда в q хранится 21, а в w хранится 8)
*/

  void divisionWithRemainder(int q, int w) {
    final private = q ~/ w;
    final remainder = q % w;
    print('Задание 1: Результат деления $q на $w с остатком: частное $private, остаток $remainder');
  }

/*
2. В переменной n хранится натуральное двузначное число.
Создайте функцию, вычисляющую и выводящую на экран сумму цифр числа n.
*/

  void sumOfDigitsOfTwoDigitNumber(int n) {
    final firstDigit = n % 10;
    final secondDigit = n ~/ 10;
    final sum = firstDigit + secondDigit;
    print('Задание 2: Сумма цифр числа $n равна $sum');
  }

/*
3. В переменной n хранится вещественное число с ненулевой дробной частью.
Создайте функцию, округляющую число n до ближайшего целого и выводящую результат на экран.
*/

  void roundingToNearestInteger(double n) {
    print('Задание 3: Ближайшее целое от числа $n равно ${n.round()}');
  }

/*
4. В переменной n хранится натуральное трёхзначное число.
Создайте функцию, вычисляющую и выводящую на экран сумму цифр числа n.
*/
  void sumOfDigitsOfThreeDigitNumber(int n) {
      int initialValueN = n;
      int sumOfDigits = 0;
      for (int i = 0; i < 3; i++) {
        sumOfDigits += n % 10;
        n = n ~/ 10;
      }
      sumOfDigits = sumOfDigits.floor();
      print('Задание 4: Сумма цифр числа $initialValueN равна $sumOfDigits');
  }
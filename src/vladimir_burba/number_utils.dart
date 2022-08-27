import 'dart:math';

final double fi = (sqrt(5) + 1) / 2;

int integerDivision(int numerator, int denominator) {
  return numerator ~/ denominator;
}

int sumOfDigits(int number) {
  int res = 0;
  do {
    res += number % 10;
    number ~/= 10;
  } while (number != 0);
  return res;
}

extension Range on num {
  bool isBetween(num from, num to, {int inclusive = 0})
  //inclusive - битовая маска включения граничных значений в диапазон.
  //  0 = 00 = () = невключительно
  //  1 = 01 = (] = включительно по
  //  2 = 10 = [) = включительно с
  //  3 = 11 = [] = включительно
  {
    return from < this && this < to || inclusive & 2 == 2 && this == from || inclusive & 1 == 1 && this == to;
  }
  bool isDouble() {
    return abs() >= double.minPositive && abs() <= double.maxFinite || this == 0;
  }
}
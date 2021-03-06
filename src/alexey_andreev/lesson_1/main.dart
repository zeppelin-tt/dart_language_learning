void main() {
  const  q = 21;
  const w = 3;
  division(q, w);

  const n = 24;
  digitSum1(n);

  const x = 2.13;
  rounder(x);

  const z = 325;
  digitSum2(z);
}

void division(int num1, int num2){
  final res = num1 ~/ num2;
  final rem = num1 % num2;

  print('$num1 разделить на $num2 равно $res, остаток $rem');
}

void digitSum1(int num1){
  final string1 = num1.toString();

  final letter1 = string1[0];
  final letter2 = string1[1];

  final digit1 = int.parse(letter1);
  final digit2 = int.parse(letter2);

  final sum = digit1 + digit2;

  print('сумма цифр числа $num1 составляет $sum') ;
}

void rounder(double num1){
  final res = num1.round();

  print('результат округления числа $num1 составляет $res');
}


void digitSum2(int num1){
  final string1 = num1.toString();

  final list1 = string1.split('');

  int sum = 0;

  for(final i in list1){
    final y = int.parse(i);
    sum = sum + y;
  }

  print('сумма цифр числа $num1 составляет $sum');
}

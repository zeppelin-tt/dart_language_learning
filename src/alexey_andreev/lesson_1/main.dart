void main() {
  int q = 21;
  var w = 3;
  division(q, w);

  int n = 24;
  digitSum1(n);

  double x = 2.13;
  rounder(x);

  int z = 325;
  digitSum2(z);
}

void division(int num1, int num2){
  int res = num1 ~/ num2;
  int rem = num1 % num2;

  print('$num1 разделить на $num2 равно $res, остаток $rem');
}

void digitSum1(int num1){
  String string1 = num1.toString();

  String letter1 = string1[0];
  String letter2 = string1[1];

  final digit1 = int.parse(letter1);
  final digit2 = int.parse(letter2);

  final sum = digit1 + digit2;

  print('сумма цифр числа $num1 составляет $sum') ;
}

void rounder(double num1){
  int res = num1.round();

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

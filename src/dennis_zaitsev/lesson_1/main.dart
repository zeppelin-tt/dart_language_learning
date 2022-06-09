void main() {
  //job 1
  division(21, 8);
  //job 2
  print(summ1 (99));
  //job 3
  rounding(55.44);
  //job 4
  print(summ2 (123));
  //extra job 1
  rectangleArea(4, 9);
  //extra job 2
  perimeterSquare(7);
}
//job 1
void division(int q, int w){
  int res1 = q ~/ w;
  int res2 = q % w;
  print('Результат деления: $res1, остаток: $res2');
}
// job 2
int summ1(int n){
  final firstNum = n ~/ 10;
  final secondNum = n % 10;
  return firstNum + secondNum;
}
//job 3
void rounding(double n) {
  int num = n.round();
  print('Ближайшее целое число от $n составляет $num');
}
// job 4
int summ2(int n) {
  final firstNum = n ~/ 100;
  final secondNum = n % 100 ~/ 10;
  final thirdNum  = n % 10;
  return firstNum + secondNum + thirdNum;
}
//extra job 1
void rectangleArea(int a, int b) {
  int recResult = a * b;
  print('Площадь прямоугольника со сторонами $a и $b равняется $recResult');
}
//extra job 2
void perimeterSquare(int n) {
  int perResult = n * 4;
  print('Периметр квадрата со сторонами $n равен $perResult');
}
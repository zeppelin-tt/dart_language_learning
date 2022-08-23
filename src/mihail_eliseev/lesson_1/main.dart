void main() {

  const q= 21;
  const w = 8;
  final b = q ~/ w;
  final d = q % w;
  print('Задание #1');
  print('Результат целочисленного деления: ${b}');
  print('Остаток от деления: ${d}');


  const numTwo = 24;
  int sum = 0;
  String numTwoToStr = numTwo.toString();
  for (var s = 0; s < numTwoToStr.length; s++) {
    sum = sum + int.parse(numTwoToStr[s]);
  }
  print('Задание #2');
  print('Сумма цифр двухзначного числа: ${sum}');

  double n = 2.6;
  var intN = n.round();
  print('Задание #3');
  print('Вещественное число: ${n}');
  print('Округление числа: ${intN}');

  const numThree = 243;
  int summ = 0;
  String numThreeToStr = numThree.toString();
  for (var i = 0; i < numThreeToStr.length; i++) {
    summ = summ + int.parse(numThreeToStr[i]);
  }
  print('Задание #4');
  print('Сумма цифр трёхзначного числа${summ}');
}
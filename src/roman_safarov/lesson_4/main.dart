void main() {
  print(intInStringOut(5));
  print(intInDoubleOut(2));
  print(intInDoubleOut(2));
}
//1. Создайте функцию, получающие на вход int и возвращающие String 'верно' или 'неверно'
// Если переменная a больше нуля и меньше 5-ти
String intInStringOut(int num) {
  if (num > 0 && num < 5) {
    return 'False';
  } else {
    return 'True';
  }
}
//2. Создайте функцию, получающие на вход int и возвращающие double
// Если переменная a равна нулю или равна двум, то прибавьте к ней 7, иначе поделите ее на 10.
// Проделайте это дважды при помощи тернарного оператора и конструкции if-else
double intInDoubleOut(int num) {
 (num == 0) ? num += 7 : (num == 2) ?  num += 7  : num = num / 10 as int;
 return num.toDouble();
}

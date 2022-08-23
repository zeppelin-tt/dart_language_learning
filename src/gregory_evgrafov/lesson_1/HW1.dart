void main() {
  // 1. В переменных q и w хранятся два натуральных числа. Создайте функцию,
  // выводящую на экран результат деления q на w с остатком.
  final int q = 21;
  final int w = 8;
  num division(n1, n2) {
    double result = q / w;
    print(result);
    return result;
  }

  // 2. В переменной n хранится натуральное двузначное число. Создайте функцию,
  // вычисляющую и выводящую на экран сумму цифр числа n.
 final int n = 21;

  int figure_sum(arg) {
    String figures = n.toString();
    String fig1 = figures[0];
    String fig2 = figures[1];
    int n1 = int.parse(fig1);
    int n2 = int.parse(fig2);
    int result = n1 + n2;
    print(result);
    return result;
  }

  // 3. В переменной n хранится вещественное число с ненулевой дробной частью. Создайте функцию,
  // округляющую число n до ближайшего целого и выводящую результат на экран.

  final double x = 3.14;
  int rounder(decimal) {
    int result = decimal.round();
    print(result);
    return result;
  }

  // 4. В переменной n хранится натуральное трёхзначное число. Создайте функцию,
  // вычисляющую и выводящую на экран сумму цифр числа n.

  // без циклом не понял как можно проитерировать стринг
  int numero = 123;
  int figure3Sum(arg) {
    String figures = arg.toString();
    String fig1 = figures[0];
    String fig2 = figures[1];
    String fig3 = figures[2];
    int n1 = int.parse(fig1);
    int n2 = int.parse(fig2);
    int n3 = int.parse(fig3);
    int result = n1 + n2 + n3;
    print(result);
    return result;
  }

  division(q, w);
  figure_sum(n);
  rounder(x);
  figure3Sum(numero);
}

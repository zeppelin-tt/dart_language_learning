void main(){

  //В переменных q и w хранятся два натуральных числа. Создайте функцию,
  //      выводящую на экран результат деления q на w с остатком.
  final q=78987;
  final w=23;
  int division_trunc(int q, int w){
    return q~/w;
  }
  int division_remainder(int q, int w){
    return q%w;
  }
  final Quotient=division_trunc(q, w);
  final Remainder=division_remainder(q, w);
  print('$q/$w=$Quotient+$Remainder');

  //В переменной n хранится натуральное двузначное число. Создайте функцию,
  //      вычисляющую и выводящую на экран сумму цифр числа n.
  final n=99;
  int digit2_sum(int n){
    return (division_trunc(n, 10) + (n - 10*division_trunc(n, 10)));
      }
      final sum2=digit2_sum(n);
  print('Сумма цифр числа $n равна $sum2.');

  //3. В переменной m хранится вещественное число с ненулевой дробной частью. Создайте функцию,
  //      округляющую число n до ближайшего целого и выводящую результат на экран.
  final m=877.5764;
  int truncator(m){
    return m.truncate();
  }
  int rounder(m){
    return m.round();
  }
  final truncated=truncator(m);
  final round=rounder(m);
  print('Округленно $m равно $round, целая часть  равна $truncated.');

  //4. В переменной o хранится натуральное трёхзначное число. Создайте функцию,
  //      вычисляющую и выводящую на экран сумму цифр числа n.
  final o=549;
  int digit3_sum(int o){
    final hundreds=division_trunc(o, 100);
    final TensAndOnes=digit2_sum(o-100*hundreds);
    return (hundreds+TensAndOnes);
    }
    final sum3=digit3_sum(o);
  print('Сумма цифр числа $o равна $sum3.');

}
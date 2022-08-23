
// 1. В переменных q и w хранятся два натуральных числа. Создайте функцию,  выводящую на экран результат деления q на w
// с остатком.
//    Пример вывода программы (для случая, когда в q хранится 21, а в w хранится 8)
// 2. В переменной n хранится натуральное двузначное число. Создайте функцию, вычисляющую и выводящую на экран сумму
// цифр числа n.
// 3. В переменной n хранится вещественное число с ненулевой дробной частью. Создайте функцию, округляющую число n до
// ближайшего целого и выводящую результат на экран.
// 4. В переменной n хранится натуральное трёхзначное число. Создайте функцию, вычисляющую и выводящую на экран сумму
// цифр числа n.
///

void main() {
  double one(int q, int w) => q / w;

  void two(int n) {
    final oneNum = n % 10;
    final twoNum = n ~/ 10;
    if (n >= 10 && n >= 99) {
      print('ЗАДАНИЕ 2\nОшибка! Укажите двузначное число\n${"-" * 75}');
    } else {
      print(
          'ЗАДАНИЕ 2\nСумма цифр числа $n равняется = ${oneNum +
              twoNum}\n${"-" * 75}');
    }
  }

  void three(double n) {
    print(
        'ЗАДАНИЕ 3\nОкругляем число $n до ближайшего целого числа и у нас получается =  ${n
            .round()}\n${"-" * 75}');
  }
    void four(int n) {
      final num = n;
      int sum = 0;
      if (n >= 100 && n >= 999) {
        print('ЗАДАНИЕ 4\nОшибка! Укажите трехзначное число\n${"-" * 75}');
      } else {
      for (int index = 0; index < 3; index++) {
        sum += n % 10;
        n = n ~/ 10;
        sum = sum.round();
        print('ЗАДАНИЕ 4\nСумма цифр числа $num равняется = $sum ');
      }
      }

    }

//Первое задание
    const q = 21;
    const w = 8;
    print(
        'ЗАДАНИЕ 1\nРезультат деления $q на $w с остатском через оператор "/" равняется = ${one(q, w)}\n${"-" * 75} ');
//Второе задание
    two(100);
//Третье задание
    three(9.9);
//Четвертое задание
    four(1555);
  }


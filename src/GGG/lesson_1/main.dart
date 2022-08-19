main() {
  //Задание №1
  division(int first, int second) {
    double result = first / second;
    print(result);
  }

  division(21, 8);

// универсальная функция для задания №2 и №4
  final int nOne = 624;
  summary(value) {
    int c = 0;
    List<String> b = nOne.toString().split('');
    b.forEach((element) {
      c += int.parse(element);
    });
    print(c);
  }

  summary(nOne);

//Задание №3
  double nTwo = 15.4;
  roundFunction(double value) {
    print(value.round());
  }

  roundFunction(nTwo);
}

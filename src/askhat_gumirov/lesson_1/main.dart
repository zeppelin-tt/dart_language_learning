
void main() {
  //Задание №1
  double division(int first, int second) {
    final double result = first / second;
    print(result);
    return result;
  }

  division(21, 8);

// универсальная функция для задания №2 и №4
  const int nOne = 624;
  int summary(value) {
    int c = 0;
    final List<String> value = nOne.toString().split('');
    for (final element in value) {
      c += int.parse(element);
    }
    print(c);
    return c;
  }

  summary(nOne);

//Задание №3
  const double nTwo = 15.4;
  int roundFunction(double value) {
    print(value.round());
    return value.round();
  }

  roundFunction(nTwo);
}

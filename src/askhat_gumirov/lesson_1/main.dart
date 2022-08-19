
void main() {
  //Задание №1
  double division(int first, int second) {
    final double result = first / second;
    print(result);
    return result;
  }



// универсальная функция для задания №2 и №4
  const int nOne = 64;
  int summary(value) {
    int c = 0;
    List<String> b = value.toString().split('');
    for (final element in b) {
      c += int.parse(element);
    }
    print(c);
    return c;

  }


//Задание №3
  const double nTwo = 15.4;
  int roundFunction(double value) {
    print(value.round());
    return value.round();
  }



  division(21, 8);
  summary(nOne);
  roundFunction(nTwo);
}

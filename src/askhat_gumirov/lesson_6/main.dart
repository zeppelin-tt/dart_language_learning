import 'dart:math';

void main() {
  //Задание №1
  final StringBuffer sb = StringBuffer();
  const naturalNumber = 523;
  final List<String> tempList = naturalNumber.toString().split('');
  print(tempList);
  for (var i = tempList.length - 1; i > -1; i--) {
    sb.writeAll({tempList[i]});
  }
  print(sb);

  //Задание №2
  final List<int> listOfInt = [];
  for (int i = 0; i != 15; i++) {
    listOfInt.add(Random().nextInt(55) + 5);
  }
  print(listOfInt);
  print('Максимальный элемент ${maxValue(listOfInt)}');
  print('Минимальный элемент ${minValue(listOfInt)}');

// Сортировка пузырьком
  for (int i = 0; i < listOfInt.length - 1; i++) {
    for (int j = 0; j < listOfInt.length - 1; j++) {
      int tempVar = 0;
      if (listOfInt[j] > listOfInt[j + 1]) {
        tempVar = listOfInt[j];
        listOfInt[j] = listOfInt[j + 1];
        listOfInt[j + 1] = tempVar;
      }
    }
  }
  print(listOfInt);

  // Задание №3
  final listOfSimple = [];
  for (int i = 1; i <= 500; i++) {
    if (primeNumbers(i)) {
      listOfSimple.add(i);
    }
  }
  print(listOfSimple);

  // Задание №4
  sortRange(51, 15);
}

// Вспомогательные функции к заданию 2
int maxValue(List<int> list) {
  int maxElement = 0;
  for (final element in list) {
    maxElement > element ? maxElement = maxElement : maxElement = element;
  }
  return maxElement;
}

int minValue(List<int> list) {
  int minElement = maxValue(list);
  for (final element in list) {
    minElement > element ? minElement = element : minElement = minElement;
  }
  return minElement;
}

// Вспомогательная функция к заданию №3
bool primeNumbers(int value) {
  for (int i = 2; i < value; i++) {
    if (value % i == 0) {
      return false;
    }
  }
  return true;
}

// функция к заданию №4 сортирует по возрастанию или по убыванию ренж числе от а до б
int sortRange(int a, int b) {
  if (a == b) {
    print(a);
  }
  if (a < b) {
    print(a++);
    sortRange(a, b);
  }
  if (a > b) {
    print(a--);
    sortRange(a, b);
  }
  return 0;
}

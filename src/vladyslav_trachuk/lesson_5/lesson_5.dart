import 'dart:math';

//Первый способ закидывания в список
List listick = [];

void addList() {
  listick.add(Random().nextInt(100));
  if (listick.length < 20) {
    return addList();
  } else {
    print('Задание 1, длинна листа ${listick.length}');
  }
}

//Второй способ закидывания в список методом List`a
final random = Random();
final listochek = List.generate(20, (i) => random.nextInt(100));

//Первый способ отсортировать при получении значений (Сделал через запрещенный цикл)
void operationList1() {
  final randomList = [];
  for (randomList.length = 0; randomList.length < 20;) {
    final randoms = Random().nextInt(100);
    if (randoms % 5 != 0 || randoms % 7 != 0) {
      randomList.add(randoms);
    }
  }
  print('Задание 2 с циклом $randomList');
}

// Второй способ отсортировать список (Без цикла)
final randomList = [];

void operationList2() {
  final randoms = Random().nextInt(100);
  if (randomList.length < 20 || randoms % 5 == 0 || randoms % 7 == 0) {
    randomList.add(randoms);
    return operationList2();
  } else {
    print('Задание 2 без цикла $randomList');
  }
}

// Третий способ отсортировать встроенным методом List`a - retainWhere
final randomList2 = listochek.toList()..retainWhere((element) => element % 5 == 0 || element % 7 == 0);

// Сортировка с методом пузырька (Использвал запрещенный цикл)
void bubbleSort() {
  final listSort = [];
  var i = 0;
  for (int b = 0; b < 10; b++) {
    final newInt = Random().nextInt(10); //Создали список рандомных интов
    listSort.add(newInt);
  }
  print('Задание 3 До сортировки $listSort');
  for (int o = 0; o < listSort.length - 1; o++) {
    for (i = 0; i < listSort.length - 1; i++) {
      if (listSort[i] > listSort[i + 1]) {
        final save = listSort[i];
        listSort[i] = listSort[i + 1];
        listSort[i + 1] = save;
      }
    }
  }
  print('Задание 3 После сортировки пузырьковым методом $listSort');
}

//Сортировка встроенным методов
final sortList = listochek.toList()..sort();
//Обратная сортировка
void reverseSort1() {
  List<int> reversList = List.generate(20, (i) => random.nextInt(100));
  reversList = reversList..sort((a, b) => b - a);
  print('Задание 3 обратная сортировка $reversList');
}

//Сортировка от четного к нечетному
void oddToEven() {
  sortList.sort((a, b) {
    if (a.isEven && !b.isEven) {
      return 1;
    } else if (b.isEven && !a.isEven) {
      return -1;
    } else {
      return a.compareTo(b);
    }
  });
  print('Задание 4 от нечетного к четному $sortList');
}

//Удаляем первый и последний элемент списка
void removeFirstLast() {
  sortList.removeLast();
  print('Задание 5 удаляем последний элемент списка $sortList');
  sortList.removeAt(0);
  print('Задание 5 удаляем первый элемент списка $sortList');
}

//Добавляем ко всем элементам листа плюс один
void addAll1() {
  final addAllList = sortList.map((value) => value + 1);
  print('Задание 6 добавляем ко всем элементам списка + 1  $addAllList');
}

//Добавляем элементы в список каждый из которых будет на 100 больше элемента из списка.
void addExpandToList() {
  final expandList = randomList.expand((value) => [value, value + 100]).toList();
  print('Задание 7 довляем элементы больше 100 $expandList');
  expandList.shuffle();
  print('Задание 8 перемешиваем $expandList');
}

//Ищем первое число меньше  100 и получаем его индекс
void findFirst() {
  final elementFirst = sortList.firstWhere((element) => element < 100);
  print('Задание 8 находим первый элемент списка меньше ста $elementFirst');
  final indexFirst = sortList.indexWhere((element) => element < 100);
  print('Задание 8 находим индекс первый элемент списка меньше ста $indexFirst');
}

//Находим соответсвие
void findElement() {
  final findNewElement =
      sortList.where((element) => element == 100 || element == 37 || element == 55 || element == 99 || element == 64);
  print('Задание 9 находим элементы 100, 37, 55, 99, 64 и и выводим их $findNewElement');
}

//Суммируем все числа в списке
void sumList() {
  final sum = sortList.reduce((value, element) => value + element);
  print('Задание 10, сумма чисел в списке $sum');
}
//Превращаем все элементы в String, обратно возвращаем их в int

final listString = sortList.map((element) => 'Number $element').toList();
//Обратно возвращаем их в int

final listInt = listString.map((element) => int.parse(element.substring(6)));
//Добавляем к каждому элементу три копии

final tripleList = listInt.expand((element) => [element, element, element]);

//Превращаем список в Set
final toSet = tripleList.toSet();
//Превращаем Set снова в список
final toList = toSet.toList();
//Превращаем список в Map
final toMap = toList.asMap();

//Расчитываем большую сторону с помощью коэф. золотого сечения
class GoldenRationSize {
  int smallSide;
  int? bigSide;

  GoldenRationSize(this.smallSide) {
    bigSide = (smallSide * 1.61803398875).round();
  }

  @override
  String toString() {
    return '$bigSide';
  }
}

void main() {
  print('Задание 1 методом List`a  $listochek');
  addList();
  operationList1();
  operationList2();
  print('Задание 2 встроенным методом фильтруем и выводим удаленное $randomList2');
  print('Задание 3 стандартным методом сортировки $sortList');
  bubbleSort();
  reverseSort1();
  oddToEven();
  removeFirstLast();
  addAll1();
  addExpandToList();
  findFirst();
  findElement();
  sumList();
  print('Задание 11 превращаем все элементы в String $listString');
  print('Задание 12 превращаем обратно в int $listInt');
  print('Задание 13 каждый элемент прописываем трижды $tripleList');
  print('Задание 14 превращаем список в Set $toSet');
  print('Задание 15 превращаем Set в список $toList');
  print('Задание 16 превращаем список в Map $toMap');
  final goldenRationSize = GoldenRationSize(34);
  print(
      'Задание 17 расчитываем коэф. золотого сечения где, меньшая сторорона = ${goldenRationSize.smallSide} то большая равна = $goldenRationSize');
}

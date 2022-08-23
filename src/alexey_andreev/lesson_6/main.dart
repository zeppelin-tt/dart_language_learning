import 'dart:math';

void main() {
  const n = 12345;
  final nString = n.toString();
  final List<String> nList = nString.split('');
  for (var i = 0; i < nList.length / 2; i++) {
    final temp = nList[i];
    nList[i] = nList[nList.length - 1 - i];
    nList[nList.length - 1 - i] = temp;
  }
  final nReversedString = nList.reduce((value, element) => '$value$element');
  final nReversed = int.parse(nReversedString);
  print(nReversed);

  final rnd = Random();

  final list1 = List<int>.generate(15, (item) => 5 + rnd.nextInt(55));
  print(list1);

  list1.sort();
  final min = list1.first;
  final max = list1.last;
  final med = list1.reduce((value, element) => value + element) / list1.length;
  print(list1);
  print('$min, $max, $med');

  list1.shuffle();
  print(list1);

  final getBubbleSorted = bubbleSort(list1);
  print(getBubbleSorted);

  const numb = 500;
  primeNumbers(numb);

  const a = 15;
  const b = 6;
  recursionFunc(a, b);
}

List bubbleSort(List<int> list) {
  final int lengthOfList = list.length;
  for (int i = 0; i < lengthOfList - 1; i++) {
    for (int j = 0; j < lengthOfList - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        final int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}

void primeNumbers(int numb) {
  int i;
  for (i = 2; i <= numb; i++) {
    int j;
    int isPrime = 1;
    for (j = 2; j <= i / 2; j++) {
      if (i % j == 0) {
        isPrime = 0;
        break;
      }
    }
    if (isPrime == 1) {
      print(i);
    }
  }
}

void recursionFunc(int a, int b) {
  if (a == b) {
    print(a);
    return;
  }
  if (a < b) {
    print(a);
    a++;
    recursionFunc(a, b);
  }
  if (a > b) {
    print(a);
    a--;
    recursionFunc(a, b);
  }
}

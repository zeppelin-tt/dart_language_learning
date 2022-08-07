import 'dart:io';

void main() {
  final result = factorial(20);
  print(result);
}


int factorial(int n) {
  if (n < 0) {
    throw 'Незлья меньше 0!!!';
  }
  if (n == 1 || n == 0) {
    return 1 ;
  }
  return n * factorial(n - 1);
}

void printMatrix(int maxI, int maxJ) {
  final maxMagnitude = getMagnitude(maxI * maxJ);
  for(int i = 1; i <= maxI ; i++) {
    for(int j = 1; j <= maxJ ; j++) {
      final intTemp = i * j;
      final magnitude = getMagnitude(intTemp);
      final notFirstPrefix = ' ' * (maxMagnitude - magnitude);
      final firstPrefix = ' ' * (maxMagnitude - getMagnitude(i));
      final prefix = j == 1 ? firstPrefix : notFirstPrefix;
      stdout.write('$prefix$intTemp ');
    }
    stdout.write('\n');
  }
}

int getMagnitude(int number) {
  int orderNumber = 0;
  int numberTemp = number;
  while (numberTemp > 9) {
    numberTemp = numberTemp ~/ 10;
    orderNumber++;
  }
  return orderNumber;
}

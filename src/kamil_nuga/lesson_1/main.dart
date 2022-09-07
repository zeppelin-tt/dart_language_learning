void main() {
  const int q = 21;
  const int w = 8;
  print(simpleDivision(q, w));
  print(sumOfNumbersForTwoDigit(q));
  print(simpleRound(8.59)); // Проверка пограничной ситуации в большую сторону
  print(simpleRound(8.49)); // Проверка пограничной ситуации в меньшую сторону
  print(sumOfNumbersForThreeDigit(301));
}

double simpleDivision(int q, int w) => q / w;

int? sumOfNumbersForTwoDigit(int n) {
  if (n.toString().length != 2) return null;
  return n % 10 + n ~/ 10;
}

int simpleRound(double n) => n.round();

int? sumOfNumbersForThreeDigit(int n) {
  if (n.toString().length != 3) return null;
  return n ~/ 100 + n ~/ 10 % 10 + n % 10;
}

double simpleDivision(int q, int w) => q / w;

int sumOfNumbersForTwoDigit(int n) => n % 10 + n ~/ 10;

int simpleRound(double n) => n.round();

int sumOfNumbersForThreeDigit(int n) => n ~/ 100 + n ~/ 10 % 10 + n % 10;

void main() {
  const int q = 21;
  const int  w = 8;
  print(simpleDivision(q, w));
  print(sumOfNumbersForTwoDigit(q));
  print(simpleRound(8.49)); // Проверка пограничной ситуации в большую сторону
  print(simpleRound(8.49)); // Проверка пограничной ситуации в меньшую сторону
  print(sumOfNumbersForThreeDigit(301));
}
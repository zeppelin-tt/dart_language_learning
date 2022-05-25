void main(List<String> args) {
  firstFunction(w: 5);
  print(functionForSecondAndFourthExercise(15));
  print(thirdFunction(2.3));
}

void firstFunction({int q = 0, required int w}) {
  print(q % w);
}

int functionForSecondAndFourthExercise(int value) {
  assert(value > 9 && value < 100);
  var n = value.toString().split('');
  return int.parse(n[0]) + int.parse(n[1]);
}

int thirdFunction(double value) {
  return value.round();
}

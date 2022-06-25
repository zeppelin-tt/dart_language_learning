void main(List<String> args) {
  firstFunction(16, 9);
  print(secondFunction(15));
  print(thirdFunction(2.3));
  print(fourthFunction(289));
}

void firstFunction(int q, int w) {
  print('деление ${q / w} | остаток ${q % w}');
}

int secondFunction(int value) {
  assert(value > 9 && value < 100);
  var n = value.toString().split('');
  return int.parse(n[0]) + int.parse(n[1]);
}

int thirdFunction(double num) {
  var firstFractionalNum = int.parse(num.toString()[num.toString().indexOf('.') + 1]);

  if(firstFractionalNum < 5){
    return num ~/ 1;
  }
  else{
    return (num ~/1) +1;
  }
}

int fourthFunction(int value){
  assert(value > 99 && value < 1000);
  var num = value.toString().split('');
  return int.parse(num[0]) + int.parse(num[1]) + int.parse(num[2]);
}

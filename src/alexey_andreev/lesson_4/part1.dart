void main() {
  final a = 20;

  String check1 = (a > 0 && a < 5) ? ('Right') : ('Wrong');
  print(check1);


  double checking(int a) {
    if (a == 0 || a == 2) {
      return (a + 7);
    }
    else {
      return (a / 10);
    }
  }
  final check2 = checking(a);
  print(check2);


  double check3 = (a == 0 || a == 2) ? (a + 7) : (a / 10);
  print(check3);


  final min = 44;

  int partOfAnHour(min) {
    if (0 < min && min <= 15) {
      return (1);
    }
    else if (15 < min && min <= 30) {
      return (2);
    }
    else if (30 < min && min <= 45) {
      return (3);
    }
    else if (45 < min && min <= 59) {
      return (4);
    }
    throw('Error');
  }

  print(partOfAnHour(min));
}
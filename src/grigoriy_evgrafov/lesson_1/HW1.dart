//task1
int q = 21;
int w = 8;
num division(n1, n2) {
  double result = q / w;
  print(result);
  return result;
}

//tak2
int n = 21;

num figure_sum(arg) {
  String figures = n.toString();
  String fig1 = figures[0];
  String fig2 = figures[1];
  int n1 = int.parse(fig1);
  int n2 = int.parse(fig2);
  int result = n1 + n2;
  print(result);
  return result;
}

//task3

double x = 3.14;
int rounder(decimal) {
  int result = decimal.round();
  print(result);
  return result;
}

//task4
// без циклом не понял как можно проитерировать стринг
int numero = 123;
num figure3_sum(arg) {
  String figures = arg.toString();
  String fig1 = figures[0];
  String fig2 = figures[1];
  String fig3 = figures[2];
  int n1 = int.parse(fig1);
  int n2 = int.parse(fig2);
  int n3 = int.parse(fig3);
  int result = n1 + n2 + n3;
  print(result);
  return result;
}

void main() {
  division(q, w);
  figure_sum(n);
  rounder(x);
  figure3_sum(numero);
}

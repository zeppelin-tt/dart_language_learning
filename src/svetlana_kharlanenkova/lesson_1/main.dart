double apelsin(q, w) {
  return q/w;
}

int apelsin2(n) {
  final a = n%10;
  final b = n~/10;
  return (a+b);
}

int apelsin3(n) {
  return n.round();
}

int apelsin4(n) {
  final a = n~/100;
  final b = (n/10%10).round();
  final c = n%10;
  return (a+b+c);
}

void main(List<String> args) {

 const q = 21;
 const w = 8;

 final c = apelsin(q, w);

 print(c);
 print(apelsin2(52));
 print(apelsin3(7.5));
 print(apelsin4(123));
}

void main () {
int q = 21;
int w = 8;
int a; int b;
a = q ~/ w;
b = q - a * w;
// print ('целая часть =', a, 'остаток =', b);
// не получилось :-)
print ("целая часть: $a");
print ("остаток: $b");

b = q % w;
print ("остаток ещё раз: $b");
}


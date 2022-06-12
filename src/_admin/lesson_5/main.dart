void main() {
  dynamic foo = 'Hello';
  print(foo as Object?);

  // foo = 2;
  print(foo.runtimeType);
}

int get sum => 1 + 1;

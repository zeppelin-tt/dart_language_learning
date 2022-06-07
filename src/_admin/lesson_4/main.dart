void main() {
  fooFunc(print, Foo.two);
}

typedef ResultCallback = void Function(String result);

void fooFunc(ResultCallback onResult, Foo foo) {
  if (foo == Foo.one) {
    onResult(r'Bingo! Вы выиграли 1000 $');
    return;
  }
  onResult('foo: $foo, попробуйте еще раз!');
}

enum Foo { one, two, three }

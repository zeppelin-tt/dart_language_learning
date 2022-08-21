Function newPrint = print;

abstract class Printable {
  void print() {
    dynamic print(m) => newPrint(m);
  }
}

// 2.1 Создать интерфейс Printable, содержащий метод void print().
// 2.2 Создать класс Book с полем name, реализующий интерфейс Printable. (писать в консоль имя книги)
// 2.3 Создать класс Magazine с полем name, реализующий интерфейс Printable. (писать в консоль имя журнала)
// 2.4 Создать по 2 экземпляра книг и журналов.
void main (){
  final Magazine aroundTheWorld = Magazine('Вокруг света');
  aroundTheWorld.printName();
  final Magazine hacker = Magazine.noName();
  hacker..name = 'Хакер'
  ..printName();
  final Book verber = Book('Империя Ангелов');
  verber.printName();
  final Book ants = Book.noName();
  ants..name = 'Муравьи'
  ..printName();


}
abstract class Printable{
  void printName();
}
class Book implements Printable {
  String? name;
  Book (this.name);
  Book.noName();

  @override
  void printName() => print(name);
}
class Magazine implements Printable{
  String? name;
  Magazine.noName();
  Magazine(this.name);

  @override
  void printName() => print(name);
}
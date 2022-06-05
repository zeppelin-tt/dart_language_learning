import 'burnable.dart';

void main(){

  final hamlet = Book('Hamlet');
  hamlet.display();

  final romeoAndJuliet = Book('Romeo and Juliet');
  romeoAndJuliet.display();

  final playboy = Magazine('Playboy');
  playboy.display();

  final rollingStone = Magazine('Rolling Stone');
  rollingStone.display();
}
  
class Printable{

  void display(){
  }
}

class Book with Burnable implements Printable {

  String name;

  Book(this.name);

  @override
  void display() {
    print(name);
    burn();
  }
}

class Magazine with Burnable implements Printable{

  String name;

  Magazine(this.name);

  @override
  void display() {
    print(name);
    burn();
  }
}
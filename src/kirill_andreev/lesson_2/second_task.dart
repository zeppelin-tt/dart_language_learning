class Person{

  String fullName;
  int age;

  Person({
    this.fullName = '',
    this.age = 0
});

  void move(){
    print('${this.fullName} move');
  }

  void talk(){
    print('${this.fullName} move');
  }
}

void main(List<String> args){
  Person person = Person();
  Person kir = Person(fullName: 'Kirill Andreev', age : 29);
  print('${person.fullName} | ${person.age} | ${kir.fullName} | ${kir.age}');
}
void main() {
  final Post address = Post('Россия', 643, 'С.-Петербург', 'Невский', 'Седова', 194227);
  print('Страна: ${address.nameOfCountry}');
  print('Код: ${address.codeOfCountry}');
  print('Город: ${address.nameOfCity}');
  print('Район: ${address.nameOfDepartment}');
  print('Улица: ${address.nameOfStreet}');
  print('Пчтовый индекс: ${address.numberOfPost}');
}

class Country {
  String nameOfCountry;
  int codeOfCountry;

  Country(this.nameOfCountry, this.codeOfCountry);
}

class City extends Country {
  String nameOfCity;

  City(String nameOfCountry, int codeOfCountry, this.nameOfCity) : super(nameOfCountry, codeOfCountry);
}

class Department extends City {
  String nameOfDepartment;

  Department(String nameOfCountry, int codeOfCountry, String nameOfCity, this.nameOfDepartment)
      : super(nameOfCountry, codeOfCountry, nameOfCity);
}

class Street extends Department {
  String nameOfStreet;

  Street(String nameOfCountry, int codeOfCountry, String nameOfCity, String nameOfDepartment, this.nameOfStreet)
      : super(nameOfCountry, codeOfCountry, nameOfCity, nameOfDepartment);
}

class Post extends Street {
  int numberOfPost;

  Post(String nameOfCountry, int codeOfCountry, String nameOfCity, String nameOfDepartment, String nameOfStreet,
      this.numberOfPost)
      : super(nameOfCountry, codeOfCountry, nameOfCity, nameOfDepartment, nameOfStreet);
}

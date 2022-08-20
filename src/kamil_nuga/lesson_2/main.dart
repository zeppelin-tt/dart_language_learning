import 'models.dart';

void main() {
  const Person person = Person(name: 'Jack', surname: 'Abraham', age: 15);
  print(person.fullName);
  final Person student = Student(
      name: 'Steve',
      surname: 'Jobs',
      age: 15,
      yearOfAdmission: DateTime(2021, 9));
  print(student.toString());
}

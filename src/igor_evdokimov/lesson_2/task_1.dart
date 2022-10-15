void main() {
final vasya = Bishop('Дарт Ведарь', 'Храм святого Дартия', 3000000000, 'Дартий Блаженный',
'Василий', 'Иванов', 1992);
}

class Person {
String firstName;
String lastName;
int yearOfBirth;

Person(this.firstName, this.lastName, this.yearOfBirth);
}

class Faithful extends Person {
String religion;

Faithful(this.religion, String firstName, String lastName, int yearOfBirth)
    : super(firstName, lastName, yearOfBirth);
}

class Orthodox extends Faithful {
String patron;

Orthodox(this.patron, String firstName, String lastName, int yearOfBirth)
    : super('православный', firstName, lastName, yearOfBirth);
}

class ChurchWorker extends Orthodox {
String church;
int salary;

ChurchWorker(this.church, this.salary, String patron, String firstName,
String lastName, int yearOfBirth)
    : super(patron, firstName, lastName, yearOfBirth);
}

class Bishop extends ChurchWorker {
String newName;

Bishop(this.newName, String church, int salary, String patron,
String firstName, String lastName, int yearOfBirth)
    : super(church, salary, patron, firstName, lastName, yearOfBirth);
}
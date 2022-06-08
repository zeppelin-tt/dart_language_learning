void main() {
  final startoflife = StartOfLife('Vovo4ka', 'male', DateTime(1984));
  final kindergarden = KinderGarden('Pete4ka', 'male', DateTime(2000), 'friendships');
  final school = School('Leno4ka', 'female', DateTime(1998), 'communication', 'Red diplom');
  final university = University('Slavo4ka', 'male', DateTime(1969), 'hooliganism', 'No diplom', 'omissions');
  final job = Job('Ole4ka', 'female', DateTime(1990), 'female friendship', 'usual diplom', 'technical diplom', 'IT specialist');
  final cemetery = Cemetery('Ane4ka', 'female', DateTime(1980), 'communication', 'Red diplom', 'humanitarian diplom', 'Charmer', DateTime(2012));
  print(startoflife);
  print(kindergarden);
  print(school);
  print(university);
  print(job);
  print(cemetery);
}

class StartOfLife {
  String humanName;
  String gender;
  final yearOfBirth;
  StartOfLife (this.humanName, this.gender, this.yearOfBirth);
}

class KinderGarden extends StartOfLife {
  String socialisation;

  KinderGarden(String humanName, String gender, final yearOfBirth, this.socialisation,)
      : super(humanName, gender, yearOfBirth,);
}

class School {
  String basicKnowledge;

  School(String humanName, String gender, final yearOfBirth, String socialisation, this.basicKnowledge,)
      : super(humanName, gender, yearOfBirth, socialisation,);
}

class University {
  String specialKnowledge;

  University(String humanName, String gender, final yearOfBirth, String socialisation, String basicKnowledge,
      this.specialKnowledge,) : super (humanName, gender, yearOfBirth, socialisation, basicKnowledge,);
}

class Job {
  String experience;

  Job(String humanName, String gender, final yearOfBirth, String socialisation, String basicKnowledge,
      String specialKnowledge, this.experience,)
      : super(humanName, gender, yearOfBirth, socialisation, basicKnowledge, specialKnowledge,);
}

class Cemetery {
  final yearOfDeath;

  Cemetery(String humanName, String gender, final yearOfBirth, String socialisation, String basicKnowledge,
      String specialKnowledge, String experience, this.yearOfDeath,) : super(
    humanName,
    gender,
    yearOfBirth,
    socialisation,
    basicKnowledge,
    specialKnowledge,
    experience,);
}
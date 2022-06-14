void main() {
  final startOfLife = StartOfLife('Vovo4ka', 'male', DateTime(1984));
  final kinderGarden = KinderGarden('Pete4ka', 'male', DateTime(2000), 'friendships');
  final school = School('Leno4ka', 'female', DateTime(1998), 'communication', 'Red diplom');
  final university = University('Slavo4ka', 'male', DateTime(1969), 'hooliganism', 'No diplom', 'omissions');
  final job = Job(
    'Ole4ka',
    'female',
    DateTime(1990),
    'female friendship',
    'usual diplom',
    'technical diplom',
    'IT specialist',
  );
  final cemetery = Cemetery(
    'Ane4ka',
    'female',
    DateTime(1980),
    'communication',
    'Red diplom',
    'humanitarian diplom',
    'Charmer',
    DateTime(2012),
  );
  print(startOfLife);
  print(kinderGarden);
  print(school);
  print(university);
  print(job);
  print(cemetery);
}

class StartOfLife {
  final humanName;
  final gender;
  DateTime yearOfBirth;

  StartOfLife(
    this.humanName,
    this.gender,
    this.yearOfBirth,
  );
}

class KinderGarden extends StartOfLife {
  final socialisation;

  KinderGarden(
    final humanName,
    final gender,
    DateTime yearOfBirth,
    this.socialisation,
  ) : super(
          humanName,
          gender,
          yearOfBirth,
        );
}

class School extends KinderGarden {
  final basicKnowledge;

  School(
    final humanName,
    final gender,
    DateTime yearOfBirth,
    final socialisation,
    this.basicKnowledge,
  ) : super(
          humanName,
          gender,
          yearOfBirth,
          socialisation,
        );
}

class University extends School {
  final specialKnowledge;

  University(
    final humanName,
    final gender,
    DateTime yearOfBirth,
    final socialisation,
    final basicKnowledge,
    this.specialKnowledge,
  ) : super(
          humanName,
          gender,
          yearOfBirth,
          socialisation,
          basicKnowledge,
        );
}

class Job extends University {
  final experience;

  Job(
    final humanName,
    final gender,
    DateTime yearOfBirth,
    final socialisation,
    final basicKnowledge,
    final specialKnowledge,
    this.experience,
  ) : super(
          humanName,
          gender,
          yearOfBirth,
          socialisation,
          basicKnowledge,
          specialKnowledge,
        );
}

class Cemetery extends Job {
  final yearOfDeath;

  Cemetery(
    final humanName,
    final gender,
    DateTime yearOfBirth,
    final socialisation,
    final basicKnowledge,
    final specialKnowledge,
    final experience,
    this.yearOfDeath,
  ) : super(
          humanName,
          gender,
          yearOfBirth,
          socialisation,
          basicKnowledge,
          specialKnowledge,
          experience,
        );
}

// Куриная фабрика
// Написать Фабрику(Factory) по производству кур(Hen)
// 1.8. В классе HenFactory реализовать метод getHen, который возвращает соответствующую стране породу кур

enum CountryHen {
  Russia,
  Belarusia,
  Moldovan,
  German,
}

class HenFactory {
  factory HenFactory(CountryHen country) {
    switch (country) {
      case CountryHen.Russia:
        return _RussianHen();
      case CountryHen.Belarusia:
        return _BelarusianHen();
      case CountryHen.Moldovan:
        return _MoldovanHen();
      case CountryHen.German:
        return _GermanHen();
    }
  }
  String get getHen => 'Unknow';
}

class _RussianHen implements HenFactory {
  @override
  String get getHen => 'Россия';
}

class _BelarusianHen implements HenFactory {
  @override
  String get getHen => 'Беларусия';
}

class _MoldovanHen implements HenFactory {
  @override
  String get getHen => 'Молдавия';
}

class _GermanHen implements HenFactory {
  @override
  String get getHen => 'Германия';
}

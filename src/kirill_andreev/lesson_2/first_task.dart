class MusicalInstrument{
  String name;
  String brand;
  
  MusicalInstrument({
    required this.name,
    required this.brand
  });
}

class Stringed extends MusicalInstrument{
  
  int stringCount = 0;

  Stringed({required super.name, 
    required super.brand, 
    required this.stringCount});
}

class Plucked extends Stringed{

  String contry;
  
  Plucked({
    required super.name, 
    required super.brand, 
    required super.stringCount, 
    required this.contry});
}

class Guitar extends Plucked{
  bool isNeedCombo;
  
  Guitar({
    required super.name,
    required super.brand,
    required super.stringCount,
    required super.contry,
    required this.isNeedCombo
  }); 
}

class ElectroGuitar extends Guitar{
  
  int fretsCount;

  ElectroGuitar({
    required super.name, 
    required super.brand, 
    required super.stringCount, 
    required super.contry, 
    required super.isNeedCombo,
    required this.fretsCount});
}

void main(List<String> args){
  MusicalInstrument musicalInstrument = MusicalInstrument(name: 'Lyra',
      brand: 'Mid-East');
  Stringed stringed = Stringed(name: 'Violin', brand: 'Yamaha', stringCount: 4);
  Plucked plucked = Plucked(name: 'Banjo', brand: 'Deering', stringCount: 5, 
      contry: 'Cameroon');
  Guitar guitar = Guitar(name: "Six string guitar", brand: 'Fender', stringCount: 6, 
      contry: 'Mexico', isNeedCombo: false);
  ElectroGuitar electroGuitar = ElectroGuitar(name: 'Les Paul - 100', brand: 'Epiphone', stringCount: 
  6, contry: 'USA', isNeedCombo: true, fretsCount: 24);
  
  print(musicalInstrument.name);
  print(stringed.brand);
  print('${plucked.stringCount} ${plucked.contry}');
  print('combo need = ${guitar.isNeedCombo}');
  print(electroGuitar.fretsCount);
}
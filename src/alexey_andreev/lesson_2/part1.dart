class Transport{
  String name;

  Transport(this.name);
}

class GroundTransport extends Transport{
  int maxSpeed = 0;

  GroundTransport(name, this.maxSpeed) : super(name);
}

class RailwayTransport extends GroundTransport{
  int trackGauge = 1435;

  RailwayTransport(name, maxSpeed, this.trackGauge) : super(name, maxSpeed);
}

class Locomotives extends RailwayTransport{
  String type = 'Magistral';

  Locomotives(name, maxSpeed, trackGauge, this.type) : super(name, maxSpeed, trackGauge);
}

class ElectricLocomotives extends Locomotives{
  int voltage = 5000;

  ElectricLocomotives(name, maxSpeed, trackGauge, type, this.voltage) : super(name, maxSpeed, trackGauge, type);

  String toString() {
    return 'Электровоз: $name, \nМаксимальная скорость: $maxSpeed, \nШирина колеи: $trackGauge, \nНазначение: $type, \nНапряжение сети: $voltage';
  }
}

void main(){
  final vl10 = ElectricLocomotives('ВЛ10', 100, 1520, 'магистральный', 3000);
  print (vl10);
}
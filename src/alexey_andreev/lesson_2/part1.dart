class Transport{
  String name;

  Transport(this.name);
}

class GroundTransport extends Transport{
  final int maxSpeed;

  GroundTransport(name, this.maxSpeed) : super(name);
}

class RailwayTransport extends GroundTransport{
  final int trackGauge;

  RailwayTransport(name, maxSpeed, this.trackGauge) : super(name, maxSpeed);
}

class Locomotives extends RailwayTransport{
  final String type;

  Locomotives(name, maxSpeed, trackGauge, this.type) : super(name, maxSpeed, trackGauge);
}

class ElectricLocomotives extends Locomotives{
  final int voltage;

  ElectricLocomotives(name, maxSpeed, trackGauge, type, this.voltage) : super(name, maxSpeed, trackGauge, type);

  @override
  String toString() {
    return 'Электровоз: $name, \nМаксимальная скорость: $maxSpeed, \nШирина колеи: $trackGauge, \nНазначение: $type, \nНапряжение сети: $voltage';
  }
}

void main(){
  final vl10 = ElectricLocomotives('ВЛ10', 100, 1520, 'магистральный', 3000);
  print (vl10);
}
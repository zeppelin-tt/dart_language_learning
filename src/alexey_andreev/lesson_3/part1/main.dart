import 'hen_factory.dart';

void main() {
  final countryName = 'Poland';
  final henFactory = HenFactory(countryName);
  final hen = henFactory.getHen;
  print(hen.getDescription);
}
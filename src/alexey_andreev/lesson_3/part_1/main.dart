import 'hen_factory.dart';

void main() {
  const countryName = 'Poland';
  final henFactory = HenFactory(countryName);
  final hen = henFactory.getHen;
  print(hen.description);
}
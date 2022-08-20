import 'dart:io';

import 'package:translator/translator.dart';
import '../../_homeworks/lesson_8_utils.dart';

void main() async {
  final GoogleTranslator translator;
  final PoemRepository poemRepository;
  try {
    translator = GoogleTranslator();
    poemRepository = PoemRepository();
  } on Exception {
    print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
    print('Прям вот сразу все пошло по бороде? вырубай.');
    print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
    exit(0);
  }
  try {
    poemRepository.getFiveRandomPoems().then((value) => translator.translate(value.toString(), to: 'ru').then((value) {
          print('---------------------------------------------------');
          print(value);
          print('---------------------------------------------------');
        }));
  } on Exception {
    print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
    print(
        'Не свезло, в этот раз кривые поэмы подгрузились. Эта шляпа через раз работает. Это в конструкции c then если чо');
    print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
  }
  try {
    final poems = await poemRepository.getFiveRandomPoems();
    for (final value in poems) {
      final translation = await translator.translate(value.toString(), to: 'ru');
      print('---------------------------------------------------');
      print(translation);
      print('---------------------------------------------------');
    }
  } on Exception {
    print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
    print(
        'Не свезло, в этот раз кривые поэмы подгрузились. Эта шляпа через раз работает. Это в конструкции c await если чо');
    print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
  }
}

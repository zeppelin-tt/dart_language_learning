import 'package:translator/translator.dart';
import '../../_homeworks/lesson_8_utils.dart';

void main() async {
  final translator = GoogleTranslator();
  final poemRepository = PoemRepository();

  poemRepository.getFiveRandomPoems().then((value) => translator.translate(value.toString(), to: 'ru').then(print));

  final poems = await poemRepository.getFiveRandomPoems();
  for (final value in poems) {
    final translation = await translator.translate(value.toString(), to: 'ru');
    print(translation);
  }
}

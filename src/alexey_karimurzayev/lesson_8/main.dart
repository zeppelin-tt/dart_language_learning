import 'package:translator/translator.dart';

import 'parse.dart';

Future<void> main() async {
  final translator = GoogleTranslator();
  final poems = PoemRepository();
  final poemsList = poems.getPoemsList();
  poemsList.then((value) => translator.translate(value.toString(), to: 'ru')).then(print);

  final poemsListAsync = await poems.getPoemsList();
  for (final element in poemsListAsync) {
    final poemsToConsole = await translator.translate(element.toString(), to: 'ru');
    print(poemsToConsole);
  }
}

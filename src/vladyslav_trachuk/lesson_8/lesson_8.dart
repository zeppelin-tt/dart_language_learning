// В зависимостях появилась библиотека translator: ^0.1.7
// Необходимо зайти в pubspec.yaml и нажать на pub get или в корне проекта, в терминале вызвать dart pub get
// Теперь вы можете создать объект
// final translator = GoogleTranslator();
//
// Используя репозиторий PoemRepository, получите 5 случайных поэм с описанием.
// Переведите их описания и названия.
//
// сделайте это двумя способавми. Через  then и async - await

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:translator/translator.dart';

void main() async {
  forAwait();
  then();
}

Future<void> forAwait() async {
  final poemRepository = PoemRepository();
  final translator = GoogleTranslator();
  final poemsAwait = await poemRepository.getFiveRandomPoems();
  for (final value in poemsAwait) {
    final translation = await translator.translate(value.toString(), to: 'uk');
    print('\n ___Через Await___ \n $translation');
  }
}

Future<void> then() async {
  final translator = GoogleTranslator();

  final poemRepository = PoemRepository();
  final poemsThen = poemRepository.getFiveRandomPoems()
    ..then((value) => translator.translate(value.toString(), to: 'uk').then(print));
}

class PoemRepository {
  final _randomPoemsUri = Uri.parse('https://www.poemist.com/api/v1/randompoems');

  Future<Iterable<Poem>> getFiveRandomPoems() async {
    final response = await http.get(_randomPoemsUri);
    return (jsonDecode(response.body) as List<dynamic>).map((e) => Poem.fromMap(e as Map<String, dynamic>));
  }
}

class Poem {
  final String title;
  final String content;
  final String author;

  const Poem({
    required this.title,
    required this.content,
    required this.author,
  });

  factory Poem.fromMap(Map<String, dynamic> map) {
    return Poem(
      author: map['poet']['name'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
    );
  }

  @override
  String toString() {
    return 'Poem{title: $title, content: $content, author: $author}';
  }
}

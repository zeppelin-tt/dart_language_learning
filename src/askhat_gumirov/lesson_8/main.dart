import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:translator/translator.dart';

void main() {
 translatePoems2().then(print);
}

final PoemRepository poemRepository = PoemRepository();
List<TranslatedPoem> listOfTranslatedPoems = [];

// Не знаю как реализовать через ретерн, всю голову себе сломал.
void translatePoems() {
  poemRepository.getFiveRandomPoems().then((list) {
    for (final element in list) {
      Future.wait([element.title.translate(to: 'ru'), element.content.translate(to: 'ru')]).then((value) {
        listOfTranslatedPoems.add(TranslatedPoem(title: value[0].toString(), content: value[1].toString()));
        if (listOfTranslatedPoems.length == list.length) {
          print(listOfTranslatedPoems);
        }
      });
    }
  });
}

Future<List<TranslatedPoem>> translatePoems2() async {
  Iterable<Poem> tempList = [];
  String title = '';
  String content = '';
  await poemRepository.getFiveRandomPoems().then((value) => tempList = value);
  for (final element in tempList) {
    await element.title.translate(to: 'ru').then((value) => title = value.text);
    await element.content.translate(to: 'ru').then((value) => content = value.text);
    listOfTranslatedPoems.add(TranslatedPoem(title: title, content: content));
  }
  return listOfTranslatedPoems;
}

final translator = GoogleTranslator();

class TranslatedPoem {
  final String title;
  final String content;

  TranslatedPoem({required this.title, required this.content});

  @override
  String toString() {
    return '\n======================================\n Title: $title \n Poem: \n$content';
  }
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
      title: map['title'] as String,
      content: map['content'] as String,
      author: map['poet']['name'] as String,
    );
  }

  @override
  String toString() {
    return 'Poem{title: $title, content: $content, author: $author}';
  }
}

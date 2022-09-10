import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:translator/translator.dart';

void main() {
  taskWithAwait();
  taskWithThen();
}

Future<void> taskWithAwait() async {
  final poemRepository = PoemRepository();
  final translator = GoogleTranslator();
  final poemsAwait = await poemRepository.getFiveRandomPoems();
  for (final value in poemsAwait) {
    final translation = await translator.translate(value.toString(), to: 'uk');
    print('\n ___Через Await___ \n $translation');
  }
}

Future<void> taskWithThen() async {
  final translator = GoogleTranslator();

  final poemRepository = PoemRepository();
  final poemsThen = poemRepository.getFiveRandomPoems().then(
    (value) {
      return translator.translate(value.toString(), to: 'uk');
    },
  );
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

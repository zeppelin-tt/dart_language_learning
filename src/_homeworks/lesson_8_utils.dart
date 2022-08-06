import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

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

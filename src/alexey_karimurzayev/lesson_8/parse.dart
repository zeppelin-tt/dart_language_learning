import 'dart:convert';
import 'package:http/http.dart' as http;

class ParsePoem {
  final String title;
  final String content;

  ParsePoem({required this.title, required this.content});

  factory ParsePoem.fromJson(Map<String, dynamic> json) {
    return ParsePoem(
      title: json['title'] as String,
      content: json['content'] as String,
    );
  }

  @override
  String toString() {
    return 'Название поэмы - $title, Описание - $content';
  }
}

class PoemRepository {
  Future<Iterable<ParsePoem>> getPoemsList() async {
    final Uri url = Uri.parse('https://www.poemist.com/api/v1/randompoems');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List<dynamic>).map((e) => ParsePoem.fromJson(e as Map<String, dynamic>));
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }
}
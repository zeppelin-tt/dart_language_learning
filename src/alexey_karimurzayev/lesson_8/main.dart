import 'package:translator/translator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  final tranlator = GoogleTranslator();
}



















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
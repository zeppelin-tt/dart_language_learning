import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:rxdart/rxdart.dart';

void main() {
  final messenger = Messenger();
  stdin.transform(utf8.decoder).transform(const LineSplitter()).listen(messenger.lineInput);
}

class Messenger {
  final BehaviorSubject<Message> _messageController;
  final _secondsController = BehaviorSubject<int>.seeded(0);
  final _history = <Message>[];

  static const greetingsList = ['привет', 'здравствуй', 'алоха'];
  late final Timer timer;

  Stream<Message> get messageStream => _messageController.stream;

  Messenger() : _messageController = BehaviorSubject<Message>() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => timerTicker());
    _secondsController.stream.listen((seconds) {
      print(seconds);
      if (_history.isEmpty && _secondsController.value > 5) {
        _history.add(Message.bot('Так и будешь молчать?'));
        print(_history.last);
      }
    });
    _messageController.stream.listen((message) {
      if (greetingsList.any((element) => message.text.contains(element))) {
        _history.add(Message.bot('И тебе привет! =)'));
        print(_history.last);
      }
    });
  }

  void timerTicker() {
    _secondsController.add(_secondsController.value + 1);
  }

  void lineInput(String line) {
    final message = Message(text: line, time: DateTime.now(), person: Person.me);
    _history.add(message);
    _messageController.add(message);
  }
}

enum Person { bot, me }

class Message {
  final String text;
  final DateTime time;
  final Person person;

  const Message({
    required this.text,
    required this.time,
    required this.person,
  });

  Message.bot(this.text)
      : time = DateTime.now(),
        person = Person.bot;

  @override
  String toString() {
    return '${time.hour}:${time.minute}:${time.second} $text';
  }
}

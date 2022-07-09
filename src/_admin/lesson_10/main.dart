import 'dart:io';

Future<void> main() async {
  stdout.writeln('hello');
  stdin.readLineSync();
  stdout.writeAll(['my ', 'name ', 'is ', 'Maxim ']);
  stdin.readLineSync();
  stdout.writeln('hello');
}

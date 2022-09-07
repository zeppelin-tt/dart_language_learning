import 'dart:async';
import 'dart:convert';
import 'dart:io';

StreamSubscription<double>? streamSubscription;
final StreamController<double> streamController = StreamController();
final path = '${Directory(Platform.script.toFilePath()).parent.path}${Platform.pathSeparator}data.txt';

void main() {
  double result;
  late StreamSubscription<String> streamSubscription;
  streamSubscription = stdin.transform(utf8.decoder).transform(const LineSplitter()).listen((input) async {
    result = double.parse(await File(path).readAsString());

    if (input == 'exit') {
      streamSubscription.cancel();
    }
    print(calculate(input, result));
  });
}

double calculate(String inputData, double result) {
  final List<String> tempListOfNumbers = inputData.split(RegExp('[^0-9,.]'))..removeWhere((element) => element == '');
  final List<String> tempListOfOperations = RegExp('[^0-9,.]').allMatches(inputData).map((e) => e.group(0)!).toList();
  try {
    if (tempListOfOperations.isEmpty) {
      throw InputDataException(message: 'Некорректный ввод');
    }
    if (inputData.contains(RegExp('[^0-9,.,/,%,+,-,*]')) && !inputData.contains('exit')) {
      throw InputDataException(message: 'Вводите только цифры и знаки операций');
    }
    if (tempListOfNumbers.length > 2 || tempListOfOperations.length > 1 && !inputData.contains('exit')) {
      throw InputDataException(message: 'Вводите не больше одной операции за раз' );
    }
    if (tempListOfNumbers.isEmpty && !inputData.contains('exit')) {
      throw InputDataException(message: 'Введите значения');
    }
    if (tempListOfNumbers.isNotEmpty && tempListOfNumbers.length > 1) {
      result = double.parse(tempListOfNumbers.first);
    }

    if (tempListOfOperations.first == '+') {
      result = result + double.parse(tempListOfNumbers.last);
    }
    if (tempListOfOperations.first == '-') {
      result = result - double.parse(tempListOfNumbers.last);
    }
    if (tempListOfOperations.first == '/') {
      if (double.parse(tempListOfNumbers.last) == 0) {
        File(path).readAsString().then((value) => result = double.parse(value));
        throw InputDataException(message: 'На ноль делить нельзя');
      }
      result = result / double.parse(tempListOfNumbers.last);
    }
    if (tempListOfOperations.first == '*') {
      result = result * double.parse(tempListOfNumbers.last);
    }
    if (tempListOfOperations.first == '%') {
      result = result % double.parse(tempListOfNumbers.first);
    }
    if (result > double.maxFinite) {
      throw InputDataException(message: 'Результат больше максимального значения double');
    }
  } on InputDataException catch (e) {
    print(e.message);
  }
  File(path).writeAsString(result.toString());
  return result;
}

class InputDataException {
  String message;
  InputDataException({required this.message});
}

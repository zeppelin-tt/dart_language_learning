import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main() {
  final calculator = Calculator();
  StreamSubscription<String>? listenToTheConsole;
  listenToTheConsole = stdin.transform(utf8.decoder).transform(const LineSplitter()).listen((consoleInput) {
    if (consoleInput == 'exit') {
      listenToTheConsole?.cancel();
    } else {
      calculator.getResult(consoleInput);
    }
  });
}

class Calculator {
  bool secondOperation = false;
  late double firstNumber;
  late double secondNumber;
  late String operator;
  late double saveResult;
  late double result;

  void getResult(String consoleInput) {
    final String inputString = consoleInput.replaceAll(RegExp(r'\s\b|\b\s'), '').replaceAll(',', '.');
    final List<String> temp = inputString.split(RegExp(r'(?<=\d)(?=[+*/\-%])|(?<=[+*/\-%])(?=\d)')).toList();

    bool checkInput(List<String> temp) {
      final checkInputString = temp.join();
      final symbolCheck = RegExp(r'[^\d+\-/*%.]');
      if (symbolCheck.hasMatch(checkInputString)) {
        print('Введены невалидные символы');
        return false;
      } else {}
      if (temp.length > 3) {
        print('Разрешена только одна операция за раз, или введен лишний оператор');
        return false;
      } else {}
      return true;
    }

    if (!checkInput(temp)) {
      return;
    } else {
      if (temp.length == 2) {
        operator = temp[0].split('').first;
        firstNumber = result;
        secondNumber = double.parse(temp[1]);
      } else {
        firstNumber = double.parse(temp[0]);
        operator = temp[1].split('').first;
        secondNumber = double.parse(temp[2]);
      }
      if (operator == '+') {
        result = firstNumber + secondNumber;
      }
      if (operator == '-') {
        result = firstNumber - secondNumber;
      }
      if (operator == '*') {
        result = firstNumber * secondNumber;
      }
      if (operator == '/') {
        if (secondNumber == 0) {
          print('Делить на ноль нельзя!');
          return;
        } else {
          result = firstNumber / secondNumber; // Есть проблема, ищу решение...
        }
      }
      if (operator == '%') {
        result = firstNumber % secondNumber;
      }
    }
    print(result);
  }
}

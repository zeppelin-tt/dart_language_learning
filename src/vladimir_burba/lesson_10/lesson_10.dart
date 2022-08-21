import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main() {
  final calculator = Calculator();

  StreamSubscription<String>? consoleInput;
  consoleInput = stdin.transform(utf8.decoder).transform(const LineSplitter()).listen((input) {
    if (input == 'exit') {
      consoleInput?.cancel();
    } else {
      calculator.calculate(input);
    }
  });
}

class Calculator {
  bool isSecondary = false;
  bool gotResult = false;

  late String mathSign;
  late List<double> listOfDoubles;
  late double result;
  late double num1;
  late double num2;

  void calculate(String input) {
    if (!isAcceptedAndPrepared(input)) {
      return;
    } else {
      if (isSecondary) {
        num1 = result;
        num2 = listOfDoubles[0];
      } else {
        num1 = listOfDoubles[0];
        num2 = listOfDoubles[1];
      }
      if (mathSign == '+') {
        result = num1 + num2;
      }
      if (mathSign == '-') {
        result = num1 - num2;
      }
      if (mathSign == '*') {
        result = num1 * num2;
      }
      if (mathSign == '/') {
        if (num2 == 0) {
          print('Делить на ноль нельзя!');
          return;
        } else {
          result = num1 / num2;
        }
      }
      if (mathSign == '%') {
        result = num1 % num2;
      }
      if((double.minPositive > result.abs() || result.abs() > double.maxFinite) && result.abs() != 0){
        print('Введенные аргументы выходит за границы типа Double');
        return;
      }
      gotResult = true;
      print(result);
    }
  }

  bool isAcceptedAndPrepared(String input) {
    final firstSpaceRegExp = RegExp('^[ ]');
    final wrongSymbolsRegExp = RegExp(r'[^\d+\-/*%. ]');
    if (firstSpaceRegExp.hasMatch(input) || wrongSymbolsRegExp.hasMatch(input)) {
      print('Выражение содержит недопустимые символы');
      return false;
    } else {}

    final mathSignsRegExp = RegExp(r'[+\-*/%]');
    final Iterable<Match> mathSignsMatches = mathSignsRegExp.allMatches(input);
    if (mathSignsMatches.isEmpty) {
      print('Выражение не содержит знаков математической операции');
      return false;
    }
    if (mathSignsMatches.length > 1) {
      print('Выражение содержит более одного знака математической операции');
      return false;
    } else {
      final mathSignList = (mathSignsMatches.map((e) => e.input.substring(e.start, e.end))).toList();
      mathSign = mathSignList[0];
    }

    final doublesRegExp = RegExp(r'[.\d]+');
    final Iterable<Match> doublesMatches = doublesRegExp.allMatches(input);
    if (doublesMatches.isEmpty || doublesMatches.length > 2) {
      print('Выражение содержит неправильное количество аргументов');
      return false;
    } else {
      final List<String> listOfStrings = (doublesMatches.map((e) => e.input.substring(e.start, e.end))).toList();
      listOfDoubles = listOfStrings.map(double.parse).toList();
      isSecondary = false;
    }
    for (final number in listOfDoubles) {
      if ((double.minPositive > number.abs() || number.abs() > double.maxFinite) && number.abs() != 0) {
        print('Введенные аргументы выходит за границы типа Double');
      }
    }

    final startsWithMathSignRegExp = RegExp(r'^[+\-*/%]');
    if (startsWithMathSignRegExp.hasMatch(input)) {
      if (doublesMatches.length != 1 || !gotResult) {
        print('Выражение содержит неправильное количество аргументов');
        return false;
      } else {
        isSecondary = true;
      }
    } else {
      if (doublesMatches.length == 1) {
        print('Выражение содержит неправильное количество аргументов');
        return false;
      } else {}
    }
    return true;
  }
}

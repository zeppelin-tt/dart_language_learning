import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../number_utils.dart';

void main() {
  const exitCommand = 'exit';
  final calculator = Calculator();

  StreamSubscription<String>? consoleInput;
  consoleInput = stdin.transform(utf8.decoder).transform(const LineSplitter()).listen((input) {
    if (input == exitCommand) {
      consoleInput?.cancel();
    } else {
      try {
        print(calculator.calculate(input));
      } on WrongOperationStringException catch (e) {
        print('${e.message} или $exitCommand для выхода');
      } on LimitExceededException catch (e) {
        print(e.message);
      }
    }
  });
}

class CalculationParts {
  double? operand1;
  late double operand2;
  late String operator;

  CalculationParts(this.operand1, this.operand2, this.operator);

  CalculationParts.fromString(String input) {
    const doubleRE = r'(\d*\.\d*|\d+)';
    const operatorRE = r'[+\-*/]';
    const mathOperationRE = '^($doubleRE?$operatorRE$doubleRE|$doubleRE%)\$';
    input = input.replaceAll(RegExp(r'\s'), '');
    if (!RegExp(mathOperationRE).hasMatch(input)) {
      throw WrongOperationStringException(
          'Неверная строка вычисления. Допустим ввод в формате: [ <число с плавающей запятой> ]<знак операции +, -, *, /, %, ~><число с плавающей запятой>');
    }
    operator = RegExp('($operatorRE|%)').stringMatch(input)!;
    if (operator == '%') {
      operand2 =
          double.parse(RegExp('^$doubleRE').stringMatch(input) == '.' ? '0' : RegExp('^$doubleRE').stringMatch(input)!);
    } else {
      if (RegExp('^$doubleRE').hasMatch(input)) {
        operand1 = double.parse(
            RegExp('^$doubleRE').stringMatch(input) == '.' ? '0' : RegExp('^$doubleRE').stringMatch(input)!);
        if (!operand1!.isDouble()) {
          throw LimitExceededException.def();
        }
      }
      operand2 = double.parse(
          RegExp('$doubleRE\$').stringMatch(input) == '.' ? '0' : RegExp('$doubleRE\$').stringMatch(input)!);
    }
    if (!operand2.isDouble()) {
      throw LimitExceededException.def();
    }
  }
}

class WrongOperationStringException implements Exception {
  final String message;

  WrongOperationStringException(this.message);

  WrongOperationStringException.toParent(this.message) : super();
}

class LimitExceededException implements Exception {
  static const defMessage = 'Число выходит за границы Double';
  final String message;

  LimitExceededException(this.message);

  LimitExceededException.def() : message = defMessage;

  LimitExceededException.toParent(this.message) : super();
}

class Calculator {
  double? result;

  double calculate(String input) {
    final CalculationParts calculationParts = CalculationParts.fromString(input);
    switch (calculationParts.operator) {
      case '+':
        result = (calculationParts.operand1 ?? result ?? 0) + calculationParts.operand2;
        break;
      case '-':
        result = (calculationParts.operand1 ?? result ?? 0) - calculationParts.operand2;
        break;
      case '*':
        result = (calculationParts.operand1 ?? result ?? 0) * calculationParts.operand2;
        break;
      case '/':
        result = (calculationParts.operand1 ?? result ?? 0) / calculationParts.operand2;
        break;
      case '%':
        result = (calculationParts.operand1 ?? result ?? 0) * (calculationParts.operand2 / 100);
    }
    if (!result!.isDouble()) {
      result = null;
      throw LimitExceededException.def();
    }
    return result!;
  }
}

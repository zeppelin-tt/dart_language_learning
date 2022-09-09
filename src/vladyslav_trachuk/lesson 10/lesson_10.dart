import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:decimal/decimal.dart';

void main() {
  print(
      '${'_' * 20}Клакулятор Pre-alpha 0.1.1${'_' * 20}\n|${' ' * 5} Вводить можно только цифры${' ' * 33}|\n|${' ' * 5} Для математический операций используй "- + / % *"${' ' * 10}|\n|${' ' * 5} Пробуй, но осторожно, все хрупкое =)${' ' * 23}|\n${'_' * 67}');
  final calc = Calc();
  StreamSubscription<String>? terminal;
  terminal = stdin.transform(utf8.decoder).transform(const LineSplitter()).listen((input) {
    if (input == 'exit') {
      terminal?.cancel();
    } else {
      calc.clalculate(input);
    }
  });
}

bool checkError(String input) {
  if (RegExp('[А-Яа-яa-zA-Z]').hasMatch(input)) {
    print('Это не чат бот! Это кЛакулятор');
    return false;
  }
  if (RegExp('[0-9]').allMatches(input).isEmpty) {
    print('Нет цифр');
    return false;
  }
  if (RegExp(r'[ ][^\d+\-/*%. ]').hasMatch(input)) {
    print('Введены лишние символы');
    return false;
  }
  final operators = RegExp(r'[+\-*/%]').allMatches(input);
  if (operators.isEmpty) {
    print('Нет операторов');
    return false;
  }
  if (operators.length > 1) {
    print('Много знаков');
    return false;
  } else {}
  return true;
}

class Calc {
  late String operand;
  late Decimal number1;
  late Decimal number2;
  late Decimal saveResult = 0.toDecimal();

  void clalculate(String input) {
    try {
      if (checkError(input)) {
        final mathOperators = input.split('').firstWhere(RegExp(r'[+\-*/%]').hasMatch);
        void findMathOperation(Decimal number1, Decimal number2) {
          if (mathOperators.isEmpty || mathOperators.length > 2) {
            print('Ошибка!');
          } else {
            switch (mathOperators) {
              case '-':
                saveResult = number1 - number2;
                print(saveResult);
                break;
              case '+':
                saveResult = number1 + number2;
                print(saveResult);
                break;
              case '*':
                saveResult = number1 * number2;
                print(saveResult);
                break;
              case '/':
                if (number2 != 0.toDecimal()) {
                  saveResult = (number1 / number2).toDecimal();
                  print(saveResult);
                } else {
                  print('На ноль делить нельзя');
                }
                break;
              case '%':
                final onePercentFromNumber = number1 / 100.toDecimal();
                saveResult = Decimal.parse('${onePercentFromNumber.toDouble()}') * number2;
                print('$saveResult');
                break;
            }
          }
        }

        final save = input.split(mathOperators);
        if (save[0] == '') {
          final number1 = saveResult;
          final number2 = Decimal.parse(save[1].replaceAll(',', '.'));
          findMathOperation(number1, number2);
        } else {
          saveResult = 0.toDecimal();
          final number1 = Decimal.parse(save[0].replaceAll(',', '.'));
          final number2 = Decimal.parse(save[1].replaceAll(',', '.'));
          findMathOperation(number1, number2);
        }
      }
    } on Exception catch (e) {
      print('Упс! Что-то пошло не так!');
    }
  }
}

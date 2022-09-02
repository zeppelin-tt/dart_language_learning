import 'dart:convert';
import 'dart:io';

void main() {
  print(
      '${'_' * 20}Клакулятор Pre-alpha 0.1.0${'_' * 20}\n|${' ' * 5} Вводить можно только цифры${' ' * 33}|\n|${' ' * 5} Для математический операций используй "- + / % *"${' ' * 10}|\n|${' ' * 5} Пробуй, но осторожно, все хрупкое =)${' ' * 23}|\n${'_' * 67}');
  final calc = Calc();
  var terminal;
  terminal = stdin.transform(utf8.decoder).transform(const LineSplitter()).listen((input) {
    if (input == 'exit') {
      terminal.cancel();
    } else {
      calc.claculator(input);
    }
  });
}

bool checkError(String input) {
  final firstError = RegExp(r'[ ][^\d+\-/*%. ]');
  if (firstError.hasMatch(input)) {
    print('Введены лишние символы');
    return false;
  }
  final secondError = RegExp(r'[+\-*/%]');
  final operators = secondError.allMatches(input);
  if (operators.isEmpty) {
    print('Нет операторов');
    return false;
  }
  if (operators.length > 1) {
    print('Много знаков');
    return false;
  }
  final checkArg = RegExp(r'[.\d]+');
  final checkDouble = checkArg.allMatches(input);
  if (checkDouble.isEmpty || checkDouble.length > 2) {
    print('Это не чат бот! Это кЛакулятор');
    return false;
  } else {}
  return true;
}

class Calc {
  late String operand;
  late double number1;
  late double number2;
  late double saveResult = 0;

  void claculator(String input) {
    try {
      if (checkError(input)) {
        final ss = RegExp(r'[+\-*/%]');
        final act = input.split('').firstWhere(ss.hasMatch);
        void swittches(double number1, double number2) {
          if (act.isEmpty || act.length > 2) {
            print('Ошибка!');
          } else {
            switch (act) {
              case '-':
                saveResult = double.parse((number1 - number2).toStringAsFixed(2));
                print(saveResult);
                break;
              case '+':
                saveResult = double.parse((number1 + number2).toStringAsFixed(2));
                print(saveResult);
                break;
              case '*':
                saveResult = double.parse((number1 * number2).toStringAsFixed(2));
                print(saveResult);
                break;
              case '/':
                if (number2 != 0) {
                  saveResult = double.parse((number1 / number2).toStringAsFixed(2));
                  print(saveResult);
                } else {
                  print('На ноль делить нельзя');
                }
                break;
              case '%':
                saveResult = double.parse((number1 % number2).toStringAsFixed(2));
                print(saveResult);
                break;
            }
          }
        }

        final save = input.split(act);
        if (save[0] == '') {
          final number1 = saveResult;
          final number2 = double.parse(save[1]);
          swittches(number1, number2);
        } else {
          saveResult = 0;
          final number1 = double.parse(save[0]);
          final number2 = double.parse(save[1]);
          swittches(number1, number2);
        }
      }
    } on Exception catch (e) {
      print('Упс! Что-то пошло не так!\n $e');
    }
  }
}

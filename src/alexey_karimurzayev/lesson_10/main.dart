import 'dart:convert';
import 'dart:io';

void main() {

  // stdin.transform(utf8.decoder).transform(const LineSplitter()).listen();
  takeDataFromConsole();
}

void takeDataFromConsole() {
  stdout.write('Введите любое число: ');
  final double firstNumber = double.parse(stdin.readLineSync()!);

  stdout.write('Введите еще одно любое число: ');
  final double secondNumber = double.parse(stdin.readLineSync()!);

  stdout.write('Какую опреацию произвести (выбирете из +, -, /, *): ');
  final String operator = stdin.readLineSync()!;

  if (operator == '+') {
    summarizing(firstNumber, secondNumber);
  } else if (operator == '-') {
    subtracting(firstNumber, secondNumber);
  } else if (operator == '*') {
    multiply(firstNumber, secondNumber);
  } else if (operator == '/') {
    divide(firstNumber, secondNumber);
  } else if (operator != '+' || operator != '-' || operator != '/' || operator != '*') {
    print('Ну там же подсказка была... Теперь запускай заново и вводи правильный оператор!');
    takeDataFromConsole();
  }




}

void summarizing(double firstNumber, double secondNumber) {
  final double result = firstNumber + secondNumber;

  print('$firstNumber + $secondNumber = $result');
}

void subtracting(double firstNumber, double secondNumber) {
  final double result = firstNumber - secondNumber;

  print('$firstNumber - $secondNumber = $result');
}

void multiply(double firstNumber, double secondNumber) {
  final double result = firstNumber * secondNumber;

  print('$firstNumber * $secondNumber = $result');
}

void divide(double firstNumber, double secondNumber) {
  final double result = firstNumber / secondNumber;

  print('$firstNumber / $secondNumber = $result');
}


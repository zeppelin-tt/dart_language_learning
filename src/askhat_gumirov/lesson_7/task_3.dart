void main() {
  UserValidating.userCheck(login: login, password: password, confirmPassword: confirmPassword);
}

const String login = 'fluuter_dev_58';
const String password = 'dart_dart_13';
const String confirmPassword = 'dart_dart_13';

class WrongLoginException implements Exception {
  final String message;

  WrongLoginException({required this.message});
}

class WrongPasswordException implements Exception {
  final String message;
  WrongPasswordException({required this.message});
}

class UserValidating {
  static bool userCheck({required String login, required String password, required String confirmPassword}) {
    try {
      if (login.length > 20) {
        throw WrongLoginException(message: 'Логин не соответствует параметрам');
      }
      if (login.contains(RegExp('[^A-Za-z _ 0-9]'))) {
        throw WrongLoginException(
            message: 'Логин должен содержать только буквы и цифры английского алфавита а также символ "_"');
      }
      if (password.length > 20) {
        throw WrongPasswordException(message: 'Пароль не должен содержать больше 20-ти символов');
      }
      if (password.contains(RegExp('[^A-Za-z _ 0-9]'))) {
        throw WrongPasswordException(
            message: 'Пароль должен содержать только буквы и цифры английского алфавита а также символ "_"');
      }
      if (password != confirmPassword) {
        throw WrongPasswordException(message: 'Пароли не совпадают');
      }
    } on WrongLoginException catch (e) {
      print(e.message);
      return false;
    } on WrongPasswordException catch (e) {
      print(e.message);
      return false;
    }

    print('Successful');
    return true;
  }
}

void main() {
  const login = '36Degrees';
  const password = 'Qwerty114';
  const confirmPassword = 'Qwerty114';

  bool loginPassword(String login, String password, String confirmPassword) {
    try {
      Confirmation.confirm(login, password, confirmPassword);
    } on WrongLoginException catch (e) {
      print(e.message);
      return false;
    } on WrongPasswordException catch (e) {
      print(e.message);
      return false;
    }
    return true;
  }

  print(loginPassword(login, password, confirmPassword));
}

class Confirmation {
  static bool confirm(String login, String password, String confirmPassword) {
    final RegExp confirm = RegExp('[^A-Za-z0-9_]');
    final wrongSymbolsLogin = confirm.stringMatch(login);
    if (wrongSymbolsLogin == null && login.length < 20) {
    } else {
      throw WrongLoginException('Wrong Login!');
    }
    final wrongSymbolsPassword = confirm.stringMatch(password);
    if (wrongSymbolsPassword == null && password.length < 20 && password == confirmPassword) {
    } else {
      throw WrongPasswordException('Wrong Password!');
    }
    return true;
  }
}

class WrongPasswordException implements Exception {
  final String message;
  WrongPasswordException(this.message);
  WrongPasswordException.toParent(this.message) : super();
}

class WrongLoginException implements Exception {
  final String message;
  WrongLoginException(this.message);
  WrongLoginException.toParent(this.message) : super();
}

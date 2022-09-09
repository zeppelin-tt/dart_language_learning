void main (){
  Registration.checkRegistration('Vlad_Trachuk', 'Vlad123#', 'Vlad123#');

}

class Registration {
  static bool checkRegistration(String login, String password, String confirmPassword) {
    try {
      final standardLogin = RegExp(r'^\w{1,20}$');
      if (standardLogin.hasMatch(login) == false) {
        throw WrongLoginException('Ошибка! неверно введен логин');
      }
      final standardPass = RegExp(r'^[0-9a-zA-Z!@#$%^&*]{6,20}');
      if (standardPass.hasMatch(password) == false || password != confirmPassword) {
        throw WrongPasswordException('Ошибка! неверно введен пароль');
      }
    } on WrongLoginException catch (element) {
      print(element.notification);
      return false;
    } on WrongPasswordException catch (element) {
      print(element.notification);
      return false;
    }
    print('Регистрация успешно пройдена');
    return true;
  }
}

class WrongPasswordException implements Exception {
  final String notification;
  WrongPasswordException(this.notification);
  WrongPasswordException.elder(this.notification) : super();
}

class WrongLoginException implements Exception {
  final String notification;
  WrongLoginException(this.notification);
  WrongLoginException.elder(this.notification) : super();
}
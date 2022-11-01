// 1.1. Создать класс Hen
// 1.1.1. Сделать его абстрактным
// 1.1.2. Добавить в класс абстрактный метод  int getCountOfEggsPerMonth()
// 1.1.3. Добавить в класс метод геттер String description, который возвращает строку "Я курица."
abstract class Hen {
  int getCountOfEggsPerMonth();

  String getDescription() {
    return 'Я курица.';
  }
}

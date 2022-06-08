final int day = 7;
final int hour = 15;

enum Lang{
  ru,
  eng
}

String days(int day, Lang language){
  switch (language){
    case Lang.ru:
      switch (day){
        case 1:
          return('Понедельник');
        case 2:
          return('Вторник');
        case 3:
          return('Среда');
        case 4:
          return('Четверг');
        case 5:
          return('Пятница');
        case 6:
          return('Суббота');
        case 7:
          return('Воскресенье');
        default:
          return('Нет такого дня');
      }
    case Lang.eng:
      switch (day){
        case 1:
          return('Monday');
        case 2:
          return('Tuesday');
        case 3:
          return('Wednesday');
        case 4:
          return('Thursday');
        case 5:
          return('Friday');
        case 6:
          return('Saturday');
        case 7:
          return('Sunday');
        default:
          return('There\'s no such day');
      }

  }
}

String hours(int hour, Lang language){
  switch (language){
    case Lang.ru:
      if(0 < hour && hour <= 8){
        return('Ночь');
      }
      else if(8 < hour && hour <= 12){
        return('Утро');
      }
      else if(12 < hour && hour <= 20){
        return('День');
      }
      else if(20 < hour && hour <= 23){
        return('Вечер');
      }
      else{
        return('Нет такого времени суток');
      }
    case Lang.eng:
      if(0 < hour && hour <= 8){
        return('Night');
      }
      else if(8 < hour && hour <= 12){
        return('Morning');
      }
      else if(12 < hour && hour <= 20){
        return('Day');
      }
      else if(20 < hour && hour <= 23){
        return('Evening');
      }
      else{
        return('There\'s no such time of day');
      }
  }
}

typedef ResultCallBack = void Function(String result);

/*Если что, вся эта ересь с defaultCallBack нагорожена для того, чтобы:
1) создать значение по умолчанию для необязательного аргумента
2) функция всегда выводила в консоль только одну строчку с результатом, независимо от того, указан CallBack или нет
*/

defaultCallBack(String result){}

printCallBack(String result){
  print(result);
}

String timesAndDates(int day, int hour, Lang language, [ResultCallBack onResult = defaultCallBack]){
  onResult('${days(day, language)}, ${hours(hour, language)}');

  if (onResult == defaultCallBack){
    return('${days(day, language)}, ${hours(hour, language)}');
  }
  else{
    return('');
  }
}

void main() {

  print(timesAndDates(day, hour, Lang.ru));
  print(timesAndDates(day, hour, Lang.eng, printCallBack));
}
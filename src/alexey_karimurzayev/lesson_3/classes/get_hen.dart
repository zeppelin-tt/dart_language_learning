class HenFactory {
  String? getHen(String country) {
    if (country.toString() == 'Germany') {
      return 'Я исконно немецкая курица Хаайль!';
    } else if (country.toString() == 'Belarusian') {
      return 'А я родом из Белоруссии, могу яйца нести, а могу и картошку окучить!';
    } else if (country.toString() == 'Moldova') {
      return 'Салут! Я Молдавская курица, могу яйца нести, а могу не нести!';
    } else if (country.toString() == 'Russian') {
      return 'А я с России курица, нужны яйца? иди сам их неси!';
    } else {
      return null;
    }
  }
}

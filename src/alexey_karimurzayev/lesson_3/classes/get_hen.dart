class HenFactory {
  String? getHen(String country) {
    if (country.toString() == 'Germany') {
      return 'Я исконно немецкая курица';
    } else {
      return null;
    }
  }
}

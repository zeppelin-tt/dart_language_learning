import 'number_utils.dart';

String getQuantitativePattern(int quantity, List<String> patterns) {
  assert(quantity >= 0);
  assert(patterns.length == 3);
  if (quantity == 1) {
    return patterns[0];
  } else if ((quantity % 10).isBetween(2, 4, inclusive: 3) && quantity % 100 ~/ 10 != 1) {
    return patterns[1];
  } else {
    return patterns[2];
  }
}

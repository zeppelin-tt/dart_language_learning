void main() {
  const int num = 123;

  // print(int.parse(num.toString().split('').reversed.join()));

  List<String> numStr = num.toString().split('');
  final result = StringBuffer();

  for (int i = numStr.length - 1; i > -1; i--) {
    result.write(numStr[i]);
  }

  print(result.toString());
}

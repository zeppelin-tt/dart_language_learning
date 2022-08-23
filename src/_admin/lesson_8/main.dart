import 'dart:async';

import 'package:translator/translator.dart';

void main() async {
  print(await "example".translate(to: 'pt'));
  isTextMoreThen('123', 10).then(
    (value) => print(value ? 'Строка Больше' : 'Строка Меньше'),
    onError: print,
  );
  print(countDownFromAsync(10));
  countDownFromAsync(10).listen(print);
  print(countDowns(3));

  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
}

// sync *
Iterable<int> countDownFromSync(int num) sync* {
  while (num > 0) {
    yield num--;
  }
}

Iterable<int> countDowns(int num) sync* {
  while (num > 0) {
    yield num;
    yield* countDowns(--num);
  }
}

// async *
Stream<int> countDownFromAsync(int num) async* {
  while (num > 0) {
    await Future.delayed(Duration(seconds: num));
    yield num--;
  }
}

Future<void> countDown(int num) async {
  while (num > 0) {
    await Future.delayed(const Duration(seconds: 1), () {
      print(num--);
    });
  }
}

Future<bool> isTextMoreThen(Object object, int len) {
  final completer = Completer<bool>();
  if (object is String) {
    completer.complete(
      Future.delayed(
        const Duration(seconds: 2),
        () => object.length > len,
      ),
    );
  } else {
    completer.completeError(Exception('Not a String'));
  }
  return completer.future;
}

Future<String> delayedString(String text, Duration duration) async {
  await Future.delayed(duration);
  return text;
}

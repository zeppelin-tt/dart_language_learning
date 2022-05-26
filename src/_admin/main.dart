import 'dart:collection';

void main(List<String> args) {
  // final  s = ['asd', null, 111];
  //
  // final newList = List.of([1, 2, 3, 4, 5], growable: false);
  // print(newList);
  //
  // final linkedList = LinkedList<EntryItem>();
  // linkedList.addAll([1, 2, 3, 4, 5].map((e) => EntryItem(e)));
  // linkedList.map((e) => e.id).forEach(print);
  //
  print(50.7 ~/ 7.6);
}

class EntryItem extends LinkedListEntry<EntryItem> {
  final int id;

  EntryItem(this.id);
}

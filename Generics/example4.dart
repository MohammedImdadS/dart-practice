void main(List<String> args) {
  const one = KeyValue(1, 2);
  print(one);
  const two = KeyValue(1.1, 2.2); // MapEntry<int, double>;
  print(two);
  const three = KeyValue(1, 'Foo'); // MapEntry<int, String>;
  print(three);
  // observe the four type by focus because of KeyValue before four
  // i.e MapEntry<dynamic, dynamic>;
  const KeyValue four = KeyValue(1, 2); 
  print(four);
}

// typedef KeyValue = MapEntry<K, V> // not valid
typedef KeyValue<K, V> = MapEntry<K, V>;
void main(List<String> args) {
  // Puttin ? as below it makes the list an optional
  List<String>? names;
  // Puttin ? as below it makes the optional list of optional string
  List<String?>? names1;
  List<String?>? names2 = [];

  names?.add('foo');
  // Here output is null because names is null its optional
  print(names);

  // because names list is optional but of type string is not optional so we can not add null value in it
  // names?.add(null);

  // because names1 list is optional and of type string is also optional
  names1?.add(null);
  names1?.add('bar');
  print(names1);

  names2.add('foo');
  names2.add(null);
  print(names2);

  final first = names?.first;
  print(first);

}

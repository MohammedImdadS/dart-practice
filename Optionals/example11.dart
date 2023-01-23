void main(List<String> args) {
  print(getFullName(null, null));
  print(getFullName('Foo', null));
  print(getFullName(null, 'Bar'));
  print(getFullName('Foo', 'Bar'));
  
}

String getFullName(
  String? firstName,
  String? lastName,
) =>
    withAll(
      [firstName, lastName],
      (names) => names.join(' '),
    ) ??
    'Empty';

// First T is any return type, send T says we want to work with any type of objects
T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callBack,
) =>
    optionals.any((e) => e == null) ? null : callBack(optionals.cast<T>());

// of type String
String? withAll1<String>(
  List<String?> optionals,
  String Function(List<String>) callBack,
) =>
    optionals.any((e) => e == null) ? null : callBack(optionals.cast<String>());

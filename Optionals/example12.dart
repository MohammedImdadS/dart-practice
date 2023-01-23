void main(List<String> args) {
  String? firstName = 'Foo';
  String? lasttName = 'Bar';

  final fullName = firstName.flatMap(
    (f) => lasttName.flatMap(
      (l) => '$f $l',
    ),
  ) ?? 'Either first or last name or both are null';
  print(fullName);
}

extension FlatMap<T> on T {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    if (this == null) {
      return null;
    } else {
      return callback(this);
    }
  }
}

// Flat map is a fumction in rust and swift 
// that allows to drill down within optional and grap its value and map it to another datatype
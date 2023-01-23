import 'dart:async';

/// Stream Transformers
/// It's a some sort of class that takes one stream and it changes it another stream

void main(List<String> args) async {
  // await for(final name in names) {
  //   print(name.toUpperCase());
  // }
  /// Same as above but different way
  await for (final name in names.map((names) => names.toUpperCase())) {
    print(name);
  }
  print('-------');
  await for (final capitalizedName in names.capitalized) {
    print(capitalizedName);
  }
  print('-------');
  await for (final capitalizedName in names.capitalizedUsingMap) {
    print(capitalizedName);
  }
}

Stream<String> names = Stream.fromIterable(
  [
    'Foo',
    'Bar',
    'Baz',
  ],
);

extension on Stream<String> {
  Stream<String> get capitalized => transform(
        ToUpperCase(),
      );
  Stream<String> get capitalizedUsingMap => map(
        (name) => name.toUpperCase(),
      );
}

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map(
      (name) => name.toUpperCase(),
    );
  }
}

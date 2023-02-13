///* Stream transforming using async map
///* Async maps allows you to transform to every element of a stream into its own future
void main(List<String> args) async {
  final result = await getNames().asyncMap(
    (name) => extractCharacters(name),
  ).fold('', (previous, element) {
    final elements = element.join(' ');
    return '$previous $elements ';
  });
  print(result);
}

Stream<String> getNames() async* {
  yield 'Foo';
  yield 'Boo';
  yield 'koo';
}

/// If Foo is pass o/p will be ['F','o','o']
Future<List<String>> extractCharacters(String from) async {
  final characters = <String>[];
  for (var character in from.split('')) {
    await Future.delayed(Duration(milliseconds: 100));
    characters.add(character);
  }
  return characters;
}
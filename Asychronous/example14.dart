void main(List<String> args) async {
  final name3times = getNames().asyncExpand((name) => times3(name));
  await for (final name in name3times) {
    print(name);
  }
}

Stream<String> getNames() async* {
  yield 'Foo';
  yield 'Boo';
  yield 'koo';
}

Stream<String> times3(String value) => Stream.fromIterable(
      Iterable.generate(
        3,
        (_) => value,
      ),
    );

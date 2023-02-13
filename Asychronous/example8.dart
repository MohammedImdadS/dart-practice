void main(List<String> args) async {
  await for(final names in allNames()){
    print(names);
  }
}

Stream<String> maleNames() async*{
  yield 'Foo';
  yield 'Bar';
  yield 'Baz';
}

Stream<String> femaleNames() async*{
  yield 'Fooza';
  yield 'Baaz';
  yield 'Bani';
}

Stream<String> allNames() async*{
  // await for(final maleNames in maleNames()) {
  //   yield maleNames;
  // }
  yield* maleNames(); /// short form for above

  // await for(final femaleNames in femaleNames()) {
  //   yield femaleNames;
  // }
  yield* femaleNames();// short form for above
}
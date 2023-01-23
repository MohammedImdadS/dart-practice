/// Future => |Start ------- wait 1sec ----- produceValue  |stop
/// stream => |Start ---- wait 1sec ---- produce1Value --- wait 1sec --- produce2Values --- |stop
void main(List<String> args) async {
  await for (var element in getNumber()) {
    print(element);
  }

  try {
    await for (final name in getNames()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }
}

// returns the list of names ['Foo', 'Bar']
// List<String> names() => ['Foo', 'Bar'];

/// |start (1sec delay) 0 (1sec delay) 1 (1sec delay) 2 (1sec delay) 3 ...upto.... (1sec delay) 9  |stop
Stream<int> getNumber() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    yield i; // Insert's i value into return stream like 1 2 3...9
  }
}

Stream<String> getNames() async* {
  await Future.delayed(const Duration(seconds: 1));
  yield 'Foo';
  throw Exception('Something went wrong');
  // yield 'Bar'; // Dead code, cannot yield after throwing an exception
}

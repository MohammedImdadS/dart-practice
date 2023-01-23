void main(List<String> args) async {
  /// one way
  int sum1 = 0;
  await for (final age in getAllAges()) {
    sum1 +=age;
  }
  print(sum1);

  /// other ways
  /// here await works without await for because reduce returns of type Future
  final sum2 = await getAllAges().reduce((previous, element) => previous + element);
  print(sum2);
  /// Above reduce can used like, we can pass add fuction to reduce
  final sum3 = await getAllAges().reduce(add);
  print(sum3);

}
int add(int a, int b) => a + b;
Stream<int> getAllAges() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}


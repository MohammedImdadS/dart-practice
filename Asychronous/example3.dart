void main(List<String> args) async {
  /// One way of passing future to future
  // final length = await calculateLength(await getFullName());
  // print(length);

  /// Real Future chaining
  /// return value of getFullName is passed to the then value here
  final length = await getFullName().then(
    (value) => calculateLength(value),
  ); 
  print(length);

  /// Observe the above length and this lenght1 we are using then two times
  final length1 = await getFullName().then(
    (value) => calculateLength(value),
  ).then((value) => '$value cool');
  print(length1);
}

/// Future Chaining
/// Means one future that calculate value and
/// fed to another future which consume and it produce another future

Future<String> getFullName() => Future.delayed(
      const Duration(seconds: 1),
      () => 'Foo Bar',
    );

Future<int> calculateLength(String value) => Future.delayed(
      const Duration(seconds: 1),
      () => value.length,
    );

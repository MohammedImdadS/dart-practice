void main(List<String> args) async {
  final name1 = getUserName();
  final name2 = await getUserName();
  print(await name1);
  print(name2);
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());
}

// Different  wats to write future functions

/// By using async keyword as below
Future<String> getUserName() async => 'Foo Bar';

/// If you won't use async keyword then you should this way
Future<String> getAddress() => Future.value(
      '123 Main Street',
    );
Future<String> getPhoneNumber() => Future.delayed(
      Duration(seconds: 1),
      () => '555-555-555',
    );

Future<String> getCity() async {
  /// if you don't write await in here it won't delay it directly prints return value at callside
  await Future.delayed(const Duration(seconds: 1));
  return 'Andhra Pradesh';
}

Future<String> getCountry() async => 'India';

/// The comment async keyword does't contribute anything here
Future<String> getZipCode() /* async */ => Future.delayed(
      Duration(seconds: 1),
      () => '12345',
    );

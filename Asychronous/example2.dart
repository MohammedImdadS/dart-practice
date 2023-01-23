void main(List<String> args) async {
  try {
    print(
      await getFullName(
        firstName: 'Foo',
        lastName: 'Bar',
      ),
    );
    print(
      await getFullName(
        firstName: '',
        lastName: 'Baz',
      ),
    );
  } on FirstOrLastNameMissingException {
    print('First or last name is missing');
  }
}

Future<String> getFullName({
  required String firstName,
  required String lastName,
}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameMissingException();
  } else {
    return Future.value('$firstName $lastName');
  }
}

class FirstOrLastNameMissingException implements Exception {
  const FirstOrLastNameMissingException();
  @override
  String toString() => 'FirstOrLastNameMissingException';
}

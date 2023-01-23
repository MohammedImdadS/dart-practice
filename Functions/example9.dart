void main(List<String> args) {
  describeFully('Foo');
  describeFully('Foo', lastName: null);
  describeFully('Foo', lastName: 'Baz');
}

//! Mixing of position parameters and required parameter
void describeFully(
  String firstName, {
  String? lastName = 'Bar',
}) {
  print('Hii $firstName $lastName');
}

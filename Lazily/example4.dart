void main(List<String> args) {
  final person = Person();
  print('---1st---');
  print(person.fullName);// prints  _getFullName() is called and Foo Bar
  print('---2nd---');
  print(person.fullName); // but here only prints Foo Bar
  print('---3rd---');
  print(person.fullName); // but here only prints print Foo Bar

  print('---firstname---');
  print(person.firstName);
  print('---lastname--');
  print(person.lastName);
}

class Person {
  late String fullName = _getFullName();
  //without late it shows error 
  //The instance member 'fullName' can't be accessed in an initializer.
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print('_getFullName() is called');
    return 'Foo Bar';
  }
}
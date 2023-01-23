void main(List<String> args) {
  final person = Person();

  try {
    // Avoid doing this in real code since it's against
    //the recommendations instead use nullable values
    print(person.fullName);
  } catch (e) {
    print(e);
  }
  person.firstName = 'Foo';
  person.lastName = 'Bar';
  print(person.fullName);

}

//* Late Variables depends on late final variable
class Person {
 late final String firstName;
 late final String lastName;

  // these is in contract with late final firstName and lastName
 late String fullName = '$firstName $lastName';
}
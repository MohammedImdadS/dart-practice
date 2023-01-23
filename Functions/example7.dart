void main(List<String> args) {
  // Invalid Code 
  // sayGoodbyeTo()
  // sayGoodbyeTo('Foo')

  sayGoodbyeTo('Foo', 'Bar');
}

//* Positional parameter are passed in order
//* don't have names associate with them at called side.
//* they are always required
//* can't have default values
//
void sayGoodbyeTo(
  String person,
  String anotherPerson,
) {
  print('Goodbye $person, you are $anotherPerson years old');
}

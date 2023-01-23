
void main(List<String> args) {
  makeUpeerCase();
  makeUpeerCase(null);
  makeUpeerCase('Foo');
  makeUpeerCase('Foo', 'Baz');
  // makeUpeerCase('Foo', null); // not a vallid code
  makeUpeerCase(null, 'baz');
}


//*shows error Optional parameters without square brackets
// void make(
//String name = 'ss', 
//String lastName = 'Bar',) {

// }

//! Optional Positional Parameters in functions is created by using []
void makeUpeerCase([
  String? name,
  String lastName = 'Bar',
]){
  final fname = name?.toUpperCase();
  final lname = lastName.toUpperCase();
  print('$fname $lname');
}

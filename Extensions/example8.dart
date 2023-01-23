void main(List<String> args) {
  const foo = Person(name: 'Foo', age: 20);

  // A member named 'description' is defined in unnamed extension on 'Person' and 
  // unnamed extension on 'Person', and none are more specific.
  // * To overcome these error you have to define name extensions
  // print(foo.description);

  // A member named 'description' is defined in extension 
  // 'ShotDescription' and extension 'LongDescription', 
  // and none are more specific.
  // print(foo.description);
  //* To overcome these error you have to wrap the code like below

  print(ShotDescription(foo).description);
  print(LongDescription(foo).description);
}

class Person {
  final String name;
  final age;

  const Person({
    required this.name,
    required this.age,
  });
}

// short description of a person
//! If you are not specify extension name it shows error as below at call side
// A member named 'description' is defined in unnamed extension on 'Person' and 
// unnamed extension on 'Person', and none are more specific.
// extension on Person {
//   String get description => '$name ($age)';
// }

// // long description of a person
// extension on Person {
//   String get description => '$name is $age years old';
// }

extension ShotDescription on Person {
  String get description => '$name ($age)';
}

// long description of a person
extension LongDescription on Person {
  String get description => '$name is $age years old';
}
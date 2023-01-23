void main(List<String> args) {
  late String name = provideName();
  name = 'can'; // late variable also allows multiple assignments
  print(name);
  print('----Person ----');
  final person = Person();
  //! this will create exception, we can't read late varibles before they are assign
  // print(person.description); 

  person.description = 'Description 1';
  print(person.description);
  person.description = 'Description 2';
  print(person.description);

  print('----dog----');
  final woof = Dog();
  woof.description = 'Description 1';
  print(woof.description);
  try {
    //! late final variables are initialized once
    woof.description ='Description 2';
  } catch (e) {
    print(e);
  }
}

// Late Final Variable

String provideName() {
  print('Function is called');
  return 'Foo Bar';
}

class Person {
  //* late variables can be reassign multiple times
  late String description;
}

class Dog {
  //* late final variables are initialized once
  late final String description;
  // final late  String description1; invalid code shows error
}

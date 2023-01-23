 /// Different ways of Constructor initialization
void main(List<String> args) {
  const person = Person(age1: 20, name1: 'Foo');
  print(person.name);
  print(person.age);
  const person1 = Person1(name: 'Boo', age: 20);
  print(person1.name);
  print(person1.age);
}

class Person {
  final String name;
  final int age;

  /// Observe this Constructor initialization
  /// For required named parameters or for named parameters use curly brackets
  const Person({required String name1, required int age1})
      : this.name = name1,
        this.age = age1;
}

class Person1 {
  final String name;
  final int age;

  /// Observe this Constructor initialization
  const Person1({required this.name, required this.age});
}
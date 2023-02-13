 /// Different ways of Constructor initialization
void main(List<String> args) {
  const person = Person(age1: 20, name1: 'Foo');
  print(person.name);
  print(person.age);
  const person1 = Person1(name: 'Boo', age: 20);
  print(person1.name);
  print(person1.age);
  print('-------');

  final age = 10;
  final wallet = 100.0;
  // In this way you are hiding the internal variables.
  // Your constructor is asking for age and wallet insted of _secret and _superSecret.
  final exam = Exam(age, wallet);
  print('''Age = ${exam.age},
Wallet =${exam.wallet}''');
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

class Exam {
  int _secret;
  double _superSecret;

  // In this way the constructor is asking you for age and wallet
  // but the user has no idea that internally they're treated as _secret and _superSecret.
  // It's basically a way to "rename" internal private properties you won't to expose.
  Exam(int age, double wallet)
      : _secret = age,
        _superSecret = wallet;
  get age => _secret;
  get wallet => _superSecret;
}
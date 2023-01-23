/// Different types of constructors
void main(List<String> args) {
  const me = Person('Boo', 20);
  print(me.name);
  print(me.age);
  print('------');

  const foo = Person.foo();
  print(foo.name);
  print(foo.age);
  print('------');

  const bar = Person.bar(30);
  print(bar.name);
  print(bar.age);
  print('------');
  
  const baz = Person.other();
  print(baz.name);
  print(baz.age);
  print('------');
  const koo = Person.other(name: 'koo');
  print(koo.name);
  print(koo.age);
  print('------');

  const kuku = Person.other(age: 10);
  print(kuku.name);
  print(kuku.age);
  print('------');

  const ku = Person.ola(age: 0, name: 'ku');
  print(ku.name);
  print(ku.age);
  print('------');
}

class Person {
  final String name;
  final int age;

  /// type 1
  const Person(
    this.name,
    this.age,
  );

  /// Named constructor
  /// type 2
  const Person.foo()
      : name = 'foo',
        age = 20;

  /// type 3
  const Person.bar(this.age) : name = 'Bar';

  /// type 4
  const Person.other({String? name, int? age})
      : name = name ?? 'Baz',
        age = age ?? 30;
  const Person.ola({required String name, required int age})
      : name = name,
        age = age ;
}

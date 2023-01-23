void main(List<String> args) {
  final foo = Person(name: 'Foo');
  final bar = Person(name: 'Bar');
  final fooBarFamily = WrongImplementationOfFamily(members: [foo, bar]);
  print(fooBarFamily);
  print(fooBarFamily.memberscount);
  print('------');

  final fooz = Person(name: 'Fooz');
  final baz = Person(name: 'Baz');
  final foozBazFamily = RightImplementationOfFamily(members: [fooz, baz]);
  print(foozBazFamily);
  print(foozBazFamily.memberscount);
}

class  Person {
  final String name;
  Person({required this.name});
}
class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int memberscount;

//! Don't assign late variables in constructor
  WrongImplementationOfFamily({required this.members}) {
    memberscount = getMembersCount();
  }

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}

class RightImplementationOfFamily {
  final Iterable<Person> members;
  late int memberscount = getMembersCount();

  RightImplementationOfFamily({required this.members});

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}
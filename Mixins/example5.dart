void main(List<String> args) {
  final cats = <Cat>{
    Cat(age: 2, name: 'Kitty 1'),
    Cat(age: 4, name: 'Kitty 2'),
    Cat(age: 2, name: 'Kitty 1'),
  };
  cats.forEach(print);
}

enum PetType { cat, dog }

mixin Pet {
  String get name;
  int get age;
  PetType get type;

  //* uncomment and check the output
  @override
  String toString() => 'Pet ($type), name = $name, age = $age';

   //* uncomment and check the output
  @override
  int get hashCode => Object.hash(
        name,
        age,
        type,
      );

  //* uncomment and check the output
  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}

class Cat with Pet {
  @override
  final int age;

  @override
  final String name;

  @override
  final PetType type;

  Cat({
    required this.age,
    required this.name,
  }): type = PetType.cat;
}

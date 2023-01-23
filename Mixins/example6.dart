import 'dart:mirrors';

void main(List<String> args) {
  final person = Person(name: 'kareem', age: 20);
  print(person);
  final house = House(address: '123 Main St', room: 4);
  print(house);
}

mixin HasDescription {
  @override
  String toString() {
    final reflection = reflect(this);
    final thisType = MirrorSystem.getName(
      reflection.type.simpleName,
    );
    final variables =
        reflection.type.declarations.values.whereType<VariableMirror>();
    final properties = <String, dynamic>{
      for (final field in variables)
        field.asKey: reflection
              .getField(field.simpleName)
              .reflectee,
    }.toString();
    return '$thisType = $properties';
  }
}

// Combination of mixin and Reflection
// Reflection works using a mirror system.
// so the key to reflection in dart is usually a function called reflect.
// This reflect function will give you an object of instance mirror.
// Using this instance mirror you can get name of the type which you'r reflecting upon
// and you can also get that type declaration

extension Askey on VariableMirror {
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);
    return '$fieldName ($fieldType)';
  }
}

class Person with HasDescription{
  final String name;
  final int age;

  const Person({required this.name, required this.age});

}

class House with HasDescription{
  final String address;
  final int room;

  const House({required this.address, required this.room});
  
}
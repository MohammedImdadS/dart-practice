
void main(List<String> args) {
  final person = Person();
  print(person.age);
  // Late variables are only be execute only when they are used
  print(person.description); 
}

class Person {
  late String description = heavyCalculationOfDescription();
  final int age;

  Person({this.age = 18}) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    print('Function "heavyCalculationOfDescription" is called');
    return 'Foo Bar';
  }
}
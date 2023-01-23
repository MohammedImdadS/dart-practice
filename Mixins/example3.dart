void main(List<String> args) {
  final whiskers = Cat(age: 10);
  print(whiskers.age);
  whiskers.incrementAge();
  print(whiskers.age);
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age;
  Cat({required this.age});
}
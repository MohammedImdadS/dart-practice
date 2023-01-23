// create custom annotations
void main(List<String> args) {
  try {
    print('Dog aged 11 is going to run...');
    Dog(isTried: false, age: 11).run();
  } catch (e) {
    print(e);
  }
  
  try {
    print('A tried dog is going to run...');
    Dog(isTried: true, age: 3).run();
  } catch (e) {
    print(e);
  }

}

class Throws<T> {
  final List<T> exceptions;

  const Throws(this.exceptions);
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();
}

class DogIsTiredException implements Exception {
  const DogIsTiredException();
}

class Animal {
  final int age;
  const Animal({required this.age});

  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}

class Dog extends Animal {
  final bool isTried;
  const Dog({
    required this.isTried,
    required super.age,
  });

  @Throws([DogIsTooOldException, DogIsTiredException])
  // This function throws the folowing exceptions:
  /// - [DogIsTooOldException] if the dog is older than 10 years old
  /// - [DogIsTiredOldException] if the dog is tired
  @override
  void run() {
    if (age > 10) {
      throw const DogIsTooOldException();
    } else if (isTried) {
      throw const DogIsTiredException();
    } else {
      print('Dog is running');
    }
  }
}

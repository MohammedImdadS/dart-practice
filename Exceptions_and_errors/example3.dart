// * rethrow

void main(List<String> args) {
  try {
    tryCreatingPerson(age: 20);
    tryCreatingPerson(age: -1);
    tryCreatingPerson(age: 190);
  } catch (error, strackTrace) {
    print(error);
    print(strackTrace);
  }
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException {
    rethrow; // rethrow back to the callers
  } catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  }
  print('------');
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException(this.age, this.message);
  @override
  String toString() => 'InvalidAgeException $message, $age';
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0) {
      throw InvalidAgeException(
          age, 'Age cannot be negative'); // throw exception
    } else if (age > 140) {
      throw InvalidAgeException(
          age, 'Age cannot be greater than 140'); // Throw strings

    }
  }
}

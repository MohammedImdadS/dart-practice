//* static class
void main(List<String> args) {
  // Copy of Person class(i.e Instance of Person class), so the bob can not ccess the name property
  // uncomment to see the error the static setter 'name' can't be accessed through an instance.
// final bob = Person();
//* And these are not accessible if the name property is static
// bob.name = 'foo';
//* But these are accessible at  Person class level as follows below
// print(bob.name);

//..........Static ..........//
// If name property of the Person class is static then it access at Person level but not at instance level
Person.name = 'Foo';
print(Person.name);
Person.name = 'Baz';
print(Person.name);

}

class Person {
 static String name = ''; // Create once and we are going to rewriting
}





//** Static class
//! just for demostrate to count the instance (don't do like this).
// To check how many instance of class are created
// void main(List<String> args) {
//   print(Car.carInstance);
//   Car(name: 'newCar');
//   print(Car.carInstance);
//   Car(name: 'bestCar');
//   print(Car.carInstance);
// }
// class Car {
  /// _carInstantiate is not a copy of class instance any more, however it created once 
//   static int _carInstantiate = 0; 
//   static int get carInstance => _carInstantiate;
//   static void _incrementCarInstance () => _carInstantiate++;

//   final String name;

//   Car({required this.name}) {
//     _incrementCarInstance();
//   }
// }
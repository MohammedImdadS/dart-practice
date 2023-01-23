// //** Factory constructor (in some other languages it is called as class clustering)
// //!! Factory constructor can create instances of there subclasses
// !! A normal constructor can only creates an instance of that class
void main(List<String> args) {
  print(Vehicle.car());
  print(Vehicle.truck());
}
class Vehicle {
  const Vehicle();

//   //!! If you ask vehicle class to create instance of Car class then follows this
  factory Vehicle.car() => Car();  // ** Creating instance of Car class from Vehicle

//   //!! If you ask vehicle class to create instance of Truck class then follows this
  factory Vehicle.truck() => Truck(); // ** Creating instance of Truck class from Vehicle

  @override
  String toString() {
    return 'Vehicle of type $runtimeType';
  }
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
//* Abstract class
void main(List<String> args) {
  //* extending abstract class
  final car = Car(); //! as we extending the car class with vehicle class 
  print(car.kind); //! so we can inherit the abstract class methods and properties
  car.accelerate();
  car.decelerate();


  //* implementing abstract class
  final motocycle = Motocycle();
  print(motocycle.kind);
  motocycle.accelerate();
  motocycle.decelerate();
}

abstract class Vehicle {
  final VehicleKind kind;
  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
 
}

enum VehicleKind {
  car, truck, motocycle, bicycle,
}

//* Extending abstract class
//! only you have pass Vehiclekind here
//!(i.e you have to satisfy the constructor of the abstract class while extending abstract class)
class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}


//*Implementing
//! implementing means to re-imlementing every thing from the abstract class
class Motocycle implements Vehicle {
  @override
  void accelerate() => print('Motorcycle is accelerating');

  @override
  void decelerate() => print('Motorcycle is decelerating');

  @override
  VehicleKind get kind => VehicleKind.motocycle;
  
}
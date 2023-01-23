/// Sub-classes
void main(List<String> args) {
  final v = Vehicle(4);
  print(v);
  print('----');

  print(Car());
  print('----');

  print(Bicycle());
}

// ** SubClasses
class Vehicle {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  @override
  String toString() {
    // if (runtimeType == Vehicle) {
    //   return '$runtimeType with $wheelCount wheels';
    // } else {
    //   return super.toString();
    // }
    return '$runtimeType with $wheelCount wheels';
    
  }
}

// Subclass
class Car extends Vehicle {
  const Car() : super(4);
}

class Bicycle extends Vehicle{
  const Bicycle() : super(2); 
}
//* Abstract class
void main(List<String> args) {
  // this listener is of type TruckListener of abstract class
  // You can assign TruckListeners subclass to this listener
  UsingValueBuilders(listener: VehicleObserver());
 
}
class VehicleObserver extends Motocycle{
  VehicleObserver():super(0);
  
}
abstract class TrucksListener{
  const TrucksListener();
  get value;
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

class Car implements Vehicle {
  const Car();
  @override
  void accelerate() => print('Motorcycle is accelerating');

  @override
  void decelerate() => print('Motorcycle is decelerating');

  @override
  VehicleKind get kind => VehicleKind.motocycle;
}

class Motocycle extends Car implements TrucksListener {
  Motocycle(this._kind);
  
  @override
  get value => _kind;
  final _kind;
}

class UsingValueBuilders {
  final TrucksListener listener;
  UsingValueBuilders({required this.listener});

}